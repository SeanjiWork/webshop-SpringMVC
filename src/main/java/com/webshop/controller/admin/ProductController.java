package com.webshop.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.webshop.domain.Product;
import com.webshop.service.ProductService;
import com.webshop.service.UploadService;

import jakarta.validation.Valid;

@Controller
public class ProductController {

   private final UploadService uploadService;
    private final ProductService productService;
    public ProductController(UploadService uploadService, ProductService productService) {
        this.uploadService = uploadService;
        this.productService = productService;
    }


    @GetMapping("/admin/product")
    public String getProductController(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("products", products);
        return "admin/product/show";
    }

    @GetMapping("admin/product/create")
    public String getCreateProduct(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/create";
    }

    @PostMapping(value = "admin/product/create")
    public String createProductPage(Model model,
    @ModelAttribute("newProduct") @Valid Product product,
    BindingResult newProductBindingResult,
    @RequestParam("imageProductFile") MultipartFile file) {

        List<FieldError> errors = newProductBindingResult.getFieldErrors();
        for (FieldError error : errors ) {
            System.out.println (">>>>>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newProductBindingResult.hasErrors()) {
            return "admin/product/create";
        }

        String imageProduct = this.uploadService.handleSaveUploadFile(file, "product");

        product.setImage(imageProduct);
        this.productService.HandleSaveProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/{id}")
    public String getProductDetailPage(Model model, @PathVariable long id) {
        Product product = this.productService.getProductById(id).get();
        model.addAttribute("product", product);
        model.addAttribute("id", id);
        return "admin/product/detail";
    }

    @GetMapping("/admin/product/update/{id}")
    public String getUpdateProduct(Model model, @PathVariable long id) {
        Product curentProduct = this.productService.getProductById(id).get();
        model.addAttribute("updateProduct", curentProduct);
        return "admin/product/update";
    }
    @PostMapping("/admin/product/update")
    public String getUpdateProductPage(@ModelAttribute("updateProduct") @Valid Product product,
    BindingResult newProductBindingResult, @RequestParam("imageProductFile") MultipartFile file, Model model) {

//        validate
        if(newProductBindingResult.hasErrors()) {
            return "admin/product/update";
        }

        //        Kiểm tra xem product có tồn tại không
        Optional<Product> optionalProduct = this.productService.getProductById(product.getId());
        if (optionalProduct.isEmpty()) {
            model.addAttribute("error", "Product not found");
            System.out.println("Product not found in database");
            return "admin/product/update"; // Quay lại trang nếu không tìm thấy sản phẩm
        }

        Product curentProduct = optionalProduct.get();
        System.out.println("Product ID: " + product.getId());
//        Product curentProduct = this.productService.getProductById(product.getId()).get();
        if (curentProduct != null) {
//            update new image
            if(!file.isEmpty()) {
                String img = this.uploadService.handleSaveUploadFile(file, "product");
                curentProduct.setImage(img);
            }
            curentProduct.setName(product.getName());
            curentProduct.setPrice(product.getPrice());
            curentProduct.setShortDescription(product.getShortDescription());
            curentProduct.setDetailDescription(product.getDetailDescription());
            curentProduct.setQuantity(product.getQuantity());
            curentProduct.setBrand(product.getBrand());
            curentProduct.setTarget(product.getTarget());
            curentProduct.setCategory(product.getCategory());

            this.productService.HandleSaveProduct(curentProduct);
        }
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/delete/{id}")
    public String getDeleteProduct(Model model, @PathVariable long id) {
        Product product = new Product();
        model.addAttribute("id", id);
        model.addAttribute("deleteProduct", product);
        product.setId(id);
        return "admin/product/delete";
    }
    @PostMapping("admin/product/delete")
    public String deleteProduct(Model model, @ModelAttribute("deleteProduct") Product idProduct) {
        this.productService.deleteProduct(idProduct.getId());
        return "redirect:/admin/product";
    }


}

package com.webshop.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.webshop.domain.Product;
import com.webshop.service.ProductService;

@Controller
public class ProductListController {

    private final ProductService productService;
    public ProductListController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product/list")
    public String getProductList() {
        return "client/product/show";
    }

    @GetMapping("/product/list/detail/{id}")
    public String getProductListDetail(Model model, @PathVariable long id) {
       List<Product> products = this.productService.getAllProducts();
       model.addAttribute("products", products);
       Product product = this.productService.getProductById(id).get();
        model.addAttribute("product", product);
        return "client/product/product-details";
    }

    @GetMapping("/product/custom-build")
    public String getCustomBuild() {
        return "client/custom-build/custom-build";
    }

}

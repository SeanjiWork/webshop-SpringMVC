package com.webshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ProductListController {

    @GetMapping("/product/list")
    public String getProductList() {
        return "client/product/show";
    }

    @GetMapping("/product/list/detail/{id}")
    public String getProductListDetail(Model model, @PathVariable long id) {
        return "client/product/product-details";
    }

    @GetMapping("/product/custom-build")
    public String getCustomBuild() {
        return "client/custom-build/custom-build";
    }

}

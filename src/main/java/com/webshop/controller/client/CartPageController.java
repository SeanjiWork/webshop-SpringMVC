package com.webshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartPageController {


    @GetMapping("/cart")
    public String getCartPage(Model model) {
        return "client/cart/cart";
    }

    @GetMapping("/checkout")
    public String getCheckoutPage(Model model) {
        return "client/cart/checkout";
    }
}


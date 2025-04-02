package com.webshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactPageController {


    @GetMapping("/contact")
    public String getCartPage(Model model) {
        return "client/contact/show";
    }


}


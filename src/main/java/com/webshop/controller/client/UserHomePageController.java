package com.webshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserHomePageController {

    @GetMapping("/login")
    public String getAutheticationLoginPage(Model model) {
        return "client/authetication/login";
    }

    @GetMapping("/register")
    public String getAutheticationRegisterPage(Model model) {
        return "client/authetication/register";
    }

    @GetMapping("/my-account")
    public String getMyAccountPage(Model model) {
        return "client/authetication/my-account";
    }


}

package com.webshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webshop.service.UserService;



@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        String test = userService.HandleHello();
        model.addAttribute("test", test);
        model.addAttribute("testCommanWithController", "John");
        return "index";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("test", "About");
        return "admin/user/create";
    }
    
}






// @RestController
// public class UserController {

//     private HelloService helloService;

//     public UserController(HelloService helloService) {
//         this.helloService = helloService;
//     }

//     @GetMapping("/")
//     public String HandleHello() {
//         return helloService.HandleHello();
//     }
    
// }

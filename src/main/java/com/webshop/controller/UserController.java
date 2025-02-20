package com.webshop.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.webshop.service.HelloService;

@RestController
public class UserController {

    private HelloService helloService;

    public UserController(HelloService helloService) {
        this.helloService = helloService;
    }

    @GetMapping("/")
    public String HandleHello() {
        return helloService.HandleHello();
    }
    
}

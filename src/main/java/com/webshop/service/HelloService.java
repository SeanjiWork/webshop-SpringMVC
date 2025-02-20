package com.webshop.service;

import org.springframework.stereotype.Service;

@Service
public class HelloService {

    public String HandleHello() {
        return "Hello, World! with service";
    }
}

package com.webshop.service;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    public String HandleHello() {
        return "Hello, World! with service";
    }
}

package com.webshop.service;

import org.springframework.stereotype.Service;

import com.webshop.domain.UserModel;
import com.webshop.repository.UserRepository;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public UserModel HandleSaveUser(UserModel user) {
        return this.userRepository.save(user);
    }
}

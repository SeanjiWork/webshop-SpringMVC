package com.webshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.webshop.domain.UserModel;
import com.webshop.repository.UserRepository;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<UserModel> getAllUser() {
        return this.userRepository.findAll();
    }

    public List<UserModel> getAllUserByAddress(String address) {
        return this.userRepository.findByAddress(address);
    }

    public UserModel HandleSaveUser(UserModel user) {
        return this.userRepository.save(user);
    }
}

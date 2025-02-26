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
        user = userRepository.save(user);
        return user;
    }

    public UserModel getUserById(long id) {
        return userRepository.findById(id);
    }

    public void deleteUser(long id) {
        userRepository.deleteById(id);
    }
}

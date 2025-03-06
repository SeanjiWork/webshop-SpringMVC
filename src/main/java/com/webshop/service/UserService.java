package com.webshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.webshop.domain.User;
import com.webshop.repository.UserRepository;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUserByAddress(String address) {
        return this.userRepository.findByAddress(address);
    }

    public User HandleSaveUser(User user) {
        user = userRepository.save(user);
        return user;
    }

    public User getUserById(long id) {
        return userRepository.findById(id);
    }

    public void deleteUser(long id) {
        userRepository.deleteById(id);
    }
}

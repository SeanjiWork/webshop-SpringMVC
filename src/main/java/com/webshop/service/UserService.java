package com.webshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.webshop.domain.Role;
import com.webshop.domain.User;
import com.webshop.domain.dto.RegisterDTO;
import com.webshop.repository.RoleRepository;
import com.webshop.repository.UserRepository;

@Service
public class UserService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
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

    public Role getRoleByName(String name) {
       return this.roleRepository.findByName(name);
    }

    public User registerDTOtoUser(RegisterDTO registerDTO) {
        User user = new User();

        user.setFullname(registerDTO.getFirstName() + " " + registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        return user;
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }

        public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

}

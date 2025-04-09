package com.webshop.controller.client;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.webshop.domain.User;
import com.webshop.domain.dto.RegisterDTO;
import com.webshop.service.UserService;

import jakarta.validation.Valid;

@Controller
public class UserHomePageController {
    
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    public UserHomePageController(UserService userService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/login")
    public String getAutheticationLoginPage(Model model) {
        return "client/authetication/login";
    }

    @GetMapping("/register")
    public String getAutheticationRegisterPage(Model model) {
        model.addAttribute("registerUser", new RegisterDTO());
        return "client/authetication/register";
    }

    @PostMapping("/register")
    public String handleRegisterForm(@ModelAttribute("registerUser") @Valid RegisterDTO registerDTO,
                                     BindingResult bindingResult) {

        if(bindingResult.hasErrors()) {
            return "client/authetication/register";
        }

        User user = this.userService.registerDTOtoUser(registerDTO);
        String hashPassword = this.passwordEncoder.encode(user.getPassword());

        user.setPassword(hashPassword);
        user.setRole(this.userService.getRoleByName("USER"));

        //save
        this.userService.HandleSaveUser(user);

        return "redirect:/login";
    }

    @GetMapping("/my-account")
    public String getMyAccountPage(Model model) {
        return "client/authetication/my-account";
    }


}

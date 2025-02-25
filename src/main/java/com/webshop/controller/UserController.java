package com.webshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webshop.domain.UserModel;
import com.webshop.service.UserService;


@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<UserModel> users = this.userService.getAllUser();
        System.out.println("data here: " + users);

        model.addAttribute("fromUserService", "test");
        model.addAttribute("editFromController", "Test with Controller");
        return "index";
    }


       @RequestMapping("/admin/user")
        public String getUserPage(Model model) {
            List<UserModel> users = this.userService.getAllUser();
            System.out.println("data here: " + users);
            model.addAttribute("users", users);
            return "admin/user/table-user";
    }

        @RequestMapping("/admin/user/create")
        public String getCreateUserPage(Model model) {
            model.addAttribute("newUser", new UserModel());
            return "admin/user/create";
    }

    @GetMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {
        UserModel user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        model.addAttribute("id", id);
        return "admin/user/show";
    }
    
    

        @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
        public String createUserPage(Model model, @ModelAttribute("newUser") UserModel newUser) {
            this.userService.HandleSaveUser(newUser);
            System.out.println("Run here through Controller: " + newUser);
            return "redirect:/admin/user";
        }

}
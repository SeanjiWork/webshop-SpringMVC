package com.webshop.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.webshop.domain.User;
import com.webshop.service.UploadService;
import com.webshop.service.UserService;



@Controller
public class UserController {

    private final UserService userService;
    private final UploadService uploadService;

    public UserController(UserService userService, UploadService uploadService) {
        this.userService = userService;
        this.uploadService = uploadService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> users = this.userService.getAllUser();
        System.out.println("data here: " + users);

        model.addAttribute("fromUserService", "test");
        model.addAttribute("editFromController", "Test with Controller");
        return "index";
    }


    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
            List<User> users = this.userService.getAllUser();
            System.out.println("data here: " + users);
            model.addAttribute("users", users);
            return "admin/user/show";
    }

    @RequestMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
            model.addAttribute("newUser", new User());
            return "admin/user/create";
    }

    @PostMapping(value = "/admin/user/create")
    public String createUserPage(Model model, @ModelAttribute("newUser") User newUser,
        @RequestParam("imageFile") MultipartFile file) {

        String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");

//        this.userService.HandleSaveUser(newUser);
        System.out.println("Run here through Controller: " + newUser);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        model.addAttribute("id", id);
        return "admin/user/detail";
    }

    @RequestMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("updateUser", currentUser);
        return "admin/user/update";
    }
    
    @PostMapping("/admin/user/update")
    public String postMethodName(Model model, @ModelAttribute("UserModel") User updateUser) {
        User currentUser = this.userService.getUserById(updateUser.getId());
        model.addAttribute("updateUser", currentUser);
        if (currentUser != null) {
            currentUser.setFullname(updateUser.getFullname());
            currentUser.setPhone(updateUser.getPhone());
            currentUser.setAddress(updateUser.getAddress());
            
            this.userService.HandleSaveUser(currentUser);  
        }
        return "redirect:/admin/user";
    }
    

    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUser(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        User user = new User();
        user.setId(id);

        model.addAttribute("deleteUser", user);
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String deleteUser(Model model, @ModelAttribute("deleteModel") User idUser) {
        this.userService.deleteUser(idUser.getId());
        return "redirect:/admin/user";
    }

}
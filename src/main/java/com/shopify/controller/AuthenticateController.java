package com.shopify.controller;

import com.shopify.model.User;
import com.shopify.service.security.SecurityService;
import com.shopify.service.security.UserService;
import com.shopify.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AuthenticateController {

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout, HttpServletRequest request) {
        if (error != null)
            model.addAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng");

        if (logout != null)
            model.addAttribute("message", "Bạn vừa đăng xuất thành công");
        request.setAttribute("", "");
        return "login";
    }
}

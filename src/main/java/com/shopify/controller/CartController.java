package com.shopify.controller;

import com.shopify.dto.CartDto;
import com.shopify.repo.UserRepository;
import com.shopify.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private UserRepository userRepository;

    @GetMapping()
    public String getCartPage(ModelMap modelMap) {
        CartDto cartDto = cartItemService.getCartItems();
        modelMap.addAttribute("carts", cartDto.getCartItemDtos());
        modelMap.addAttribute("total", cartDto.getTotal());
        return "cart";
    }
}

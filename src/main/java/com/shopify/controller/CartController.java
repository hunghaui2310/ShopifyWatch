package com.shopify.controller;

import com.shopify.service.CartItemService;
import com.shopify.service.security.CurrentUser;
import com.shopify.service.security.UserPrincipal;
import com.shopify.util.AppUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartItemService cartItemService;

    @GetMapping("/{userId}")
    public String getCartPage(@PathVariable Integer userId) {
        return "cart";
    }

    @GetMapping("")
    public void addToCart(@RequestParam Integer productId, @CurrentUser UserPrincipal userPrincipal) {
//        UserDetails userDetails = AppUtil.getCurrentUser();
        cartItemService.addToCart(productId, userPrincipal.getId());
    }
}

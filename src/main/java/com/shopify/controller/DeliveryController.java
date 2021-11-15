package com.shopify.controller;

import com.shopify.dto.CartDto;
import com.shopify.dto.CartItemDto;
import com.shopify.dto.DeliveryDto;
import com.shopify.service.CartItemService;
import com.shopify.service.DeliveryService;
import com.shopify.util.AppUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/delivery")
public class DeliveryController {

    @Autowired
    private DeliveryService deliveryService;

    @Autowired
    private CartItemService cartItemService;

    private List<CartItemDto> cartItemDtos = new ArrayList<>();

    @GetMapping
    public String getDelivery(ModelMap modelMap) {
        CartDto cartDto = cartItemService.getCartItems();
        modelMap.addAttribute("cartItems", cartDto.getCartItemDtos());
        modelMap.addAttribute("total", cartDto.getTotal());
        modelMap.addAttribute("VAT", cartDto.getTotal() * 10 / 100);
        return "delivery";
    }
}

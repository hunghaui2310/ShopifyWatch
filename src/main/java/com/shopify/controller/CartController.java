package com.shopify.controller;

import com.shopify.dto.CartItemDto;
import com.shopify.model.CartItem;
import com.shopify.model.Product;
import com.shopify.model.User;
import com.shopify.repo.UserRepository;
import com.shopify.service.CartItemService;
import com.shopify.util.AppUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private UserRepository userRepository;

    @GetMapping()
    public String getCartPage(ModelMap modelMap) {
        UserDetails userDetails = AppUtil.getCurrentUser();
        User user = userRepository.findByUsername(userDetails.getUsername());
        List<CartItem> cartItems = cartItemService.getCartDetailByUser(user);
        List<CartItemDto> cartItemDtos = new ArrayList<>();
        long total = 0;
        for (CartItem cartItem : cartItems) {
            CartItemDto cartItemDto = new CartItemDto();
            cartItemDto.setId(cartItem.getId());
            cartItemDto.setName(cartItem.getProduct().getName());
            cartItemDto.setImage(cartItem.getProduct().getImage());
            cartItemDto.setQuantity(cartItem.getQuantity());
            cartItemDto.setUnitPrice(cartItem.getUnitPrice());
            cartItemDto.setTotalMoney(cartItem.getQuantity() * cartItem.getUnitPrice());
            cartItemDto.setProductId(cartItem.getProduct().getId());
            total += cartItemDto.getTotalMoney();
            cartItemDtos.add(cartItemDto);
        }
        modelMap.addAttribute("carts", cartItemDtos);
        modelMap.addAttribute("total", total);
        return "cart";
    }

//    @GetMapping("")
//    public String addToCart(@RequestParam Integer productId, HttpServletRequest request) {
//        UserDetails userDetails = AppUtil.getCurrentUser();
//        User user = userRepository.findByUsername(userDetails.getUsername());
//        cartItemService.addToCart(productId, user);
//        System.out.println("request = " + request.getRequestURL().toString());
//        return request.getRequestURL().toString();
//    }
}

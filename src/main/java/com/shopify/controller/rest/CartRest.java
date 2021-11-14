package com.shopify.controller.rest;

import com.shopify.dto.CartUpdateDto;
import com.shopify.model.CartItem;
import com.shopify.model.User;
import com.shopify.repo.UserRepository;
import com.shopify.service.CartItemService;
import com.shopify.util.AppUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cart")
public class CartRest {

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/addToCart/{productId}")
    public ResponseEntity<?> addToCart(@PathVariable Integer productId) {
        UserDetails userDetails = AppUtil.getCurrentUser();
        User user = userRepository.findByUsername(userDetails.getUsername());
        cartItemService.addToCart(productId, user);
        return ResponseEntity.ok(true);
    }

    @PostMapping("/updateCart")
    public ResponseEntity<?> updateCart(@RequestBody List<CartUpdateDto> cartUpdateDtos) {
        for (CartUpdateDto cartUpdateDto : cartUpdateDtos) {
            CartItem cartItem = cartItemService.getById(cartUpdateDto.getCartItemId());
            cartItem.setQuantity(cartUpdateDto.getQuantity());
            cartItemService.updateCartItem(cartItem);
        }
        return ResponseEntity.ok(true);
    }
}

package com.shopify.service;

import com.shopify.model.Cart;
import com.shopify.model.CartItem;
import com.shopify.model.Product;
import com.shopify.repo.CartItemRepository;
import com.shopify.repo.CartRepository;
import com.shopify.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.Objects;

@Service
public class CartItemService {

    @Autowired
    private CartItemRepository cartItemRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CartRepository cartRepository;

    public void addToCart(Integer productId, Long userId) {
        CartItem cartItem = cartItemRepository.findByProduct_Id(productId);
        if (Objects.nonNull(cartItem)) {
            int quantity = cartItem.getQuantity() + 1;
            cartItem.setQuantity(quantity);
            cartItemRepository.save(cartItem);
        } else {
            Product product = productRepository.getById(productId);
            Cart cart = cartRepository.findByUser_Id(userId);
            CartItem cartNew = new CartItem(1, product.getPrice(), product, cart);
            cartItemRepository.save(cartNew);
        }
    }
}

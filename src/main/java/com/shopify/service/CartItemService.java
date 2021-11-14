package com.shopify.service;

import com.shopify.model.Cart;
import com.shopify.model.CartItem;
import com.shopify.model.Product;
import com.shopify.model.User;
import com.shopify.repo.CartItemRepository;
import com.shopify.repo.CartRepository;
import com.shopify.repo.ProductRepository;
import com.shopify.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.security.Principal;
import java.sql.Date;
import java.time.Instant;
import java.util.List;
import java.util.Objects;

@Service
public class CartItemService {

    @Autowired
    private CartItemRepository cartItemRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CartRepository cartRepository;

    public List<CartItem> getCartDetailByUser(User user) {
        Cart cart = cartRepository.findByUser_Id(user.getId());
        return cartItemRepository.findAllByCart_Id(cart.getId());
    }

    @Transactional
    public void addToCart(Integer productId, User user) {
        Cart cart;
        if (cartRepository.findByUser_Id(user.getId()) == null) {
            cart = cartRepository.save(new Cart(user, Instant.now()));
        } else {
            cart = cartRepository.findByUser_Id(user.getId());
        }
        CartItem cartItem = cartItemRepository.findByProduct_Id(productId);
        if (Objects.nonNull(cartItem)) {
            int quantity = cartItem.getQuantity() + 1;
            cartItem.setQuantity(quantity);
            cartItemRepository.save(cartItem);
        } else {
            Product product = productRepository.getById(productId);
            CartItem cartNew = new CartItem(1, product.getPrice(), product, cart);
            cartItemRepository.save(cartNew);
        }
    }
}

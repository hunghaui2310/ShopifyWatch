package com.shopify.service;

import com.shopify.dto.CartDto;
import com.shopify.dto.CartItemDto;
import com.shopify.model.Cart;
import com.shopify.model.CartItem;
import com.shopify.model.Product;
import com.shopify.model.User;
import com.shopify.repo.CartItemRepository;
import com.shopify.repo.CartRepository;
import com.shopify.repo.ProductRepository;
import com.shopify.repo.UserRepository;
import com.shopify.util.AppUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.security.Principal;
import java.sql.Date;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class CartItemService {

    @Autowired
    private CartItemRepository cartItemRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CartRepository cartRepository;

    public List<CartItem> getCartDetailByUser(User user) {
        Cart cart = cartRepository.findByUser_Id(user.getId());
        return cartItemRepository.findAllByCart_Id(cart.getId());
    }

    public CartItem getById(Integer id) {
        return cartItemRepository.getById(id);
    }

    @Transactional
    public CartItem updateCartItem(CartItem cartItem) {
        return cartItemRepository.save(cartItem);
    }

    @Transactional
    public void addToCart(Integer productId, User user) {
        Cart cart;
        if (cartRepository.findByUser_Id(user.getId()) == null) {
            cart = cartRepository.save(new Cart(user, Instant.now()));
        } else {
            cart = cartRepository.findByUser_Id(user.getId());
        }
        CartItem cartItem = cartItemRepository.findByProduct_IdAndCart_Id(productId, cart.getId());
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

    public CartDto getCartItems() {
        UserDetails userDetails = AppUtil.getCurrentUser();
        User user = userRepository.findByUsername(userDetails.getUsername());
        List<CartItem> cartItems = getCartDetailByUser(user);
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
        return new CartDto(cartItemDtos, total);
    }

    public void deleteById(Integer id) {
        cartItemRepository.deleteById(id);
    }
}

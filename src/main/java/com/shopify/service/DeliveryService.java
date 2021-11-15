package com.shopify.service;

import com.shopify.dto.CartDto;
import com.shopify.dto.CartItemDto;
import com.shopify.dto.DeliveryDto;
import com.shopify.model.Delivery;
import com.shopify.model.DeliveryProduct;
import com.shopify.model.DeliveryProductRelation;
import com.shopify.model.User;
import com.shopify.repo.DeliveryProductRelaRepository;
import com.shopify.repo.DeliveryRepository;
import com.shopify.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliveryService {

    private final DeliveryRepository deliveryRepository;
    private final UserRepository userRepository;
    private final DeliveryProductService deliveryProductService;
    private final DeliveryProductRelaRepository deliveryProductRelaRepository;
    private final CartItemService cartItemService;

    @Autowired
    public DeliveryService(DeliveryRepository deliveryRepository,
                           DeliveryProductService deliveryProductService,
                           DeliveryProductRelaRepository deliveryProductRelaRepository,
                           CartItemService cartItemService,
                           UserRepository userRepository) {
        this.deliveryRepository = deliveryRepository;
        this.userRepository = userRepository;
        this.deliveryProductService = deliveryProductService;
        this.cartItemService = cartItemService;
        this.deliveryProductRelaRepository = deliveryProductRelaRepository;
    }

    @Transactional
    public void save(Delivery delivery, String username) {
        CartDto cartDto = cartItemService.getCartItems();
        User user = userRepository.findByUsername(username);
        Delivery deliveryOut = deliveryRepository.save(new Delivery(delivery.getName(), delivery.getPhoneNumber(), delivery.getAddress(), user));
        for (CartItemDto cartItemDto : cartDto.getCartItemDtos()) {
            DeliveryProduct deliveryProduct = deliveryProductService.save(cartItemDto);
            deliveryProductRelaRepository.save(new DeliveryProductRelation(deliveryOut, deliveryProduct));
        }
        return;
    }
}

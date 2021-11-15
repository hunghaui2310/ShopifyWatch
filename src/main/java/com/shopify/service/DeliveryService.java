package com.shopify.service;

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

    @Autowired
    public DeliveryService(DeliveryRepository deliveryRepository,
                           DeliveryProductService deliveryProductService,
                           DeliveryProductRelaRepository deliveryProductRelaRepository,
                           UserRepository userRepository) {
        this.deliveryRepository = deliveryRepository;
        this.userRepository = userRepository;
        this.deliveryProductService = deliveryProductService;
        this.deliveryProductRelaRepository = deliveryProductRelaRepository;
    }

    @Transactional
    public void save(DeliveryDto deliveryDto, String username) {
        User user = userRepository.findByUsername(username);
        Delivery deliDto = deliveryDto.getDelivery();
        Delivery delivery = deliveryRepository.save(new Delivery(deliDto.getName(), deliDto.getPhoneNumber(), deliDto.getAddress(), user));
        for (CartItemDto cartItemDto : deliveryDto.getCartItemDtos()) {
            DeliveryProduct deliveryProduct = deliveryProductService.save(cartItemDto);
            deliveryProductRelaRepository.save(new DeliveryProductRelation(delivery, deliveryProduct));
        }
        return;
    }
}

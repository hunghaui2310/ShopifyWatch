package com.shopify.service;

import com.shopify.dto.CartItemDto;
import com.shopify.model.CartItem;
import com.shopify.model.DeliveryProduct;
import com.shopify.model.Product;
import com.shopify.repo.DeliveryProductRepository;
import com.shopify.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliveryProductService {

    @Autowired
    private DeliveryProductRepository deliveryProductRepository;

    @Autowired
    private ProductRepository productRepository;

    @Transactional
    public DeliveryProduct save(CartItemDto cartItemDto) {
        Product product = productRepository.getById(cartItemDto.getProductId());
        DeliveryProduct deliveryProduct = new DeliveryProduct(cartItemDto.getQuantity(), cartItemDto.getUnitPrice(), product);
        return deliveryProductRepository.save(deliveryProduct);

    }
}

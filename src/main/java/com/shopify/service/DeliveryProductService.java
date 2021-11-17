package com.shopify.service;

import com.shopify.dto.CartItemDto;
import com.shopify.model.CartItem;
import com.shopify.model.DeliveryProduct;
import com.shopify.model.DeliveryProductRelation;
import com.shopify.model.Product;
import com.shopify.repo.DeliveryProductRelaRepository;
import com.shopify.repo.DeliveryProductRepository;
import com.shopify.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DeliveryProductService {

    @Autowired
    private DeliveryProductRepository deliveryProductRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private DeliveryProductRelaRepository deliveryProductRelaRepository;

    @Transactional
    public DeliveryProduct save(CartItemDto cartItemDto) {
        Product product = productRepository.getById(cartItemDto.getProductId());
        DeliveryProduct deliveryProduct = new DeliveryProduct(cartItemDto.getQuantity(), cartItemDto.getUnitPrice(), product);
        return deliveryProductRepository.save(deliveryProduct);

    }

    public List<DeliveryProduct> getByDeliveryId(Integer deliveryId) {
        List<DeliveryProductRelation> deliveryProductRelations = deliveryProductRelaRepository.findAllByDelivery_Id(deliveryId);
        return deliveryProductRelations.stream().map(DeliveryProductRelation::getDeliveryProduct).collect(Collectors.toList());
    }
}

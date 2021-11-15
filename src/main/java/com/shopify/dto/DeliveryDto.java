package com.shopify.dto;

import com.shopify.model.Delivery;

import java.util.List;

public class DeliveryDto {

    private Delivery delivery;
    private List<CartItemDto> cartItemDtos;

    public Delivery getDelivery() {
        return delivery;
    }

    public void setDelivery(Delivery delivery) {
        this.delivery = delivery;
    }

    public List<CartItemDto> getCartItemDtos() {
        return cartItemDtos;
    }

    public void setCartItemDtos(List<CartItemDto> cartItemDtos) {
        this.cartItemDtos = cartItemDtos;
    }
}

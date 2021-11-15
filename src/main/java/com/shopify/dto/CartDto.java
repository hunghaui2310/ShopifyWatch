package com.shopify.dto;

import java.util.List;

public class CartDto {

    private List<CartItemDto> cartItemDtos;
    private long total;

    public CartDto() {
    }

    public CartDto(List<CartItemDto> cartItemDtos, long total) {
        this.cartItemDtos = cartItemDtos;
        this.total = total;
    }

    public List<CartItemDto> getCartItemDtos() {
        return cartItemDtos;
    }

    public void setCartItemDtos(List<CartItemDto> cartItemDtos) {
        this.cartItemDtos = cartItemDtos;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }
}

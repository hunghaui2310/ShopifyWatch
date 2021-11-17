package com.shopify.dto;

import com.shopify.model.Delivery;

public class DeliveryDto {

    private Delivery delivery;
    private long total;

    public Delivery getDelivery() {
        return delivery;
    }

    public void setDelivery(Delivery delivery) {
        this.delivery = delivery;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }
}

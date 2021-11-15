package com.shopify.model;

import javax.persistence.*;

@Entity
@Table(name = "tbl_delivery_product_relation")
public class DeliveryProductRelation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @OneToOne
    @JoinColumn(name = "delivery_id")
    private Delivery delivery;

    @OneToOne
    @JoinColumn(name = "delivery_product_id")
    private DeliveryProduct deliveryProduct;

    public DeliveryProductRelation() {}

    public DeliveryProductRelation(Delivery delivery, DeliveryProduct deliveryProduct) {
        this.delivery = delivery;
        this.deliveryProduct = deliveryProduct;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Delivery getDelivery() {
        return delivery;
    }

    public void setDelivery(Delivery delivery) {
        this.delivery = delivery;
    }

    public DeliveryProduct getDeliveryProduct() {
        return deliveryProduct;
    }

    public void setDeliveryProduct(DeliveryProduct deliveryProduct) {
        this.deliveryProduct = deliveryProduct;
    }
}

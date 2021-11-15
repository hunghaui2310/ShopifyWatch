package com.shopify.repo;

import com.shopify.model.DeliveryProductRelation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeliveryProductRelaRepository extends JpaRepository<DeliveryProductRelation, Integer> {

    DeliveryProductRelation findByDelivery_Id(Integer deliveryId);
}

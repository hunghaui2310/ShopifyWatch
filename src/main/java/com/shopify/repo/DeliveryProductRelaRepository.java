package com.shopify.repo;

import com.shopify.model.DeliveryProductRelation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DeliveryProductRelaRepository extends JpaRepository<DeliveryProductRelation, Integer> {

    List<DeliveryProductRelation> findAllByDelivery_Id(Integer deliveryId);
}

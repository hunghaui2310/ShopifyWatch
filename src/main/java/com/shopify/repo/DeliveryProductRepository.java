package com.shopify.repo;

import com.shopify.model.DeliveryProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeliveryProductRepository extends JpaRepository<DeliveryProduct, Integer> {
}

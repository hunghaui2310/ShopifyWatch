package com.shopify.repo;

import com.shopify.model.CartItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer> {

    CartItem findByProduct_Id(Integer productId);
}

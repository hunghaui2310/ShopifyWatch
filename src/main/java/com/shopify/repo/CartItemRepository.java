package com.shopify.repo;

import com.shopify.model.CartItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer> {

    CartItem findByProduct_Id(Integer productId);

    List<CartItem> findAllByCart_Id(Integer cartId);
}

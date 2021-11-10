package com.shopify.dao;

import java.util.List;

import com.shopify.model.Cart;
import com.shopify.model.CartItem;
import com.shopify.model.Category;

public interface CartItemDao {
	void insert(CartItem cartItem);

	void edit(CartItem cartItem);

	void delete(String id);

	CartItem get(String name);

	CartItem get(int id);

	List<CartItem> getAll();

	List<CartItem> search(String name);
}

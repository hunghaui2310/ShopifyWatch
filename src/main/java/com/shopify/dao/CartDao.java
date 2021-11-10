package com.shopify.dao;

import java.util.List;

import com.shopify.model.Cart;
import com.shopify.model.Category;

public interface CartDao {
	void insert(Cart cart);

	void edit(Cart cart);

	void delete(int id);

	Cart get(String name);

	Cart get(int id);

	List<Cart> getAll();

	List<Cart> search(String name);
}

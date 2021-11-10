package com.shopify.service.impl;

import java.io.File;
import java.util.List;

import com.shopify.dao.CartDao;
import com.shopify.dao.ProductDao;
import com.shopify.dao.UserDao;
import com.shopify.dao.impl.CartDaoImpl;
import com.shopify.dao.impl.ProductDaoImpl;
import com.shopify.dao.impl.UserDaoImpl;
import com.shopify.model.Cart;
import com.shopify.model.Product;
import com.shopify.model.User;
import com.shopify.service.CartService;
import com.shopify.service.ProductService;
import com.shopify.service.UserService;

public class CartServiceImpl implements CartService {
	CartDao cartDao = new CartDaoImpl();

	@Override
	public List<Cart> search(String name) {
		return cartDao.search(name);
	}

	@Override
	public void insert(Cart cart) {
		cartDao.insert(cart);

	}

	@Override
	public List<Cart> getAll() {
		return cartDao.getAll();
	}

	@Override
	public Cart get(int id) {
		return cartDao.get(id);
	}

	@Override
	public void edit(Cart newCart) {
		Cart oldCart = cartDao.get(newCart.getId());

		oldCart.setBuyDate(newCart.getBuyDate());
		oldCart.setBuyer(newCart.getBuyer());
		
		
		cartDao.edit(oldCart);

	}

	@Override
	public void delete(int id) {
		cartDao.delete(id);
	}
}

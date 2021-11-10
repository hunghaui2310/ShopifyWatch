package com.shopify.service.impl;

import java.io.File;
import java.util.List;

import com.shopify.dao.CartDao;
import com.shopify.dao.CartItemDao;
import com.shopify.dao.ProductDao;
import com.shopify.dao.UserDao;
import com.shopify.dao.impl.CartDaoImpl;
import com.shopify.dao.impl.CartItemDaoImpl;
import com.shopify.dao.impl.ProductDaoImpl;
import com.shopify.dao.impl.UserDaoImpl;
import com.shopify.model.Cart;
import com.shopify.model.CartItem;
import com.shopify.model.Product;
import com.shopify.model.User;
import com.shopify.service.CartItemService;
import com.shopify.service.CartService;
import com.shopify.service.ProductService;
import com.shopify.service.UserService;

public class CartServiceItemImpl implements CartItemService {
	CartItemDao cartItemDao = new CartItemDaoImpl();

	@Override
	public void insert(CartItem cartItem) {
		cartItemDao.insert(cartItem);
		
	}

	@Override
	public void edit(CartItem newCartItem) {
		CartItem oldCartItem = cartItemDao.get(newCartItem.getId());
		oldCartItem.setCart(newCartItem.getCart());
		oldCartItem.setProduct(newCartItem.getProduct());
		oldCartItem.setQuantity(newCartItem.getQuantity());
		oldCartItem.setUnitPrice(newCartItem.getUnitPrice());
		
		cartItemDao.edit(oldCartItem);
	}

	@Override
	public void delete(String id) {
		cartItemDao.delete(id);
	}

	@Override
	public CartItem get(int id) {
		return cartItemDao.get(id);
	}

	@Override
	public List<CartItem> getAll() {
		return cartItemDao.getAll();
	}

	@Override
	public List<CartItem> search(String keyword) {
		return cartItemDao.search(keyword);
	}

	
}

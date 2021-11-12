package com.shopify.service;

import com.shopify.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}

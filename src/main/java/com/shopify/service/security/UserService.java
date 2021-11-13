package com.shopify.service.security;

import com.shopify.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}

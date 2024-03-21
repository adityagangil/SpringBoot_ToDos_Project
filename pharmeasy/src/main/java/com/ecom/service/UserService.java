package com.ecom.service;

import com.ecom.entity.User;

public interface UserService {
    User register(User user);
    User login(String email, String password);
}

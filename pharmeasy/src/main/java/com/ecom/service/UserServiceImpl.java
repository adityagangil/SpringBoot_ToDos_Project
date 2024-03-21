package com.ecom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.entity.User;
import com.ecom.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public User register(User user) {
        // Implement registration logic, e.g., password hashing, validation, etc.
        return userRepository.save(user);
    }

    @Override
    public User login(String email, String password) {
        // Implement login logic, e.g., verify credentials, generate tokens, etc.
        return userRepository.findByEmail(email);
    }
}

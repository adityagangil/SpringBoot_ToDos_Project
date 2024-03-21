package com.ecom.service;

import org.springframework.lang.NonNull;
import org.springframework.stereotype.Service;

import com.ecom.entity.CartItem;
import com.ecom.repository.CartItemRepository;

@Service
public class CartItemService {
    private final CartItemRepository cartItemRepository;

    // Constructor injection
    public CartItemService(CartItemRepository cartItemRepository) {
        this.cartItemRepository = cartItemRepository;
    }

    public CartItem saveCartItem(@NonNull CartItem cartItem) {
        return cartItemRepository.save(cartItem);
    }

    // Other methods as needed
}

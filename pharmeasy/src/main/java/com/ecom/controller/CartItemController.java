package com.ecom.controller;

import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ecom.entity.CartItem;
import com.ecom.service.CartItemService;

@RestController
@RequestMapping("/api/cart")
public class CartItemController {
    private final CartItemService cartItemService = new CartItemService(null);

    // Constructor

    @PostMapping
    public CartItem addToCart(@RequestBody @NonNull CartItem cartItem) {
        return cartItemService.saveCartItem(cartItem);
    }

    // Other methods as needed
}


package com.ecom.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ecom.entity.CartItem;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {
}


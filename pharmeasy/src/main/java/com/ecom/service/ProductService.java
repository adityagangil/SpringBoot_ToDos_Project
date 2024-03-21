package com.ecom.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ecom.entity.Product;
import com.ecom.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository = null;

    // Constructor

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

    // Other methods as needed
}


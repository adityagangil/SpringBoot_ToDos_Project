package com.ecom.controller;

import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ecom.entity.Product;

@RestController
@RequestMapping("/api/admin/products")
public class EditProductController {

    @PutMapping("/edit")
    public String editProduct(@RequestBody Product product) {
        // Logic to edit product (e.g., update in a database)
        return "Product edited successfully";
    }
}


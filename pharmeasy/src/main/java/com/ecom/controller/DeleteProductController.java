package com.ecom.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/admin/products")
public class DeleteProductController {

    @DeleteMapping("/delete/{productId}")
    public String deleteProduct(@PathVariable Long productId) {
        // Logic to delete product (e.g., remove from a database)
        return "Product deleted successfully";
    }
}


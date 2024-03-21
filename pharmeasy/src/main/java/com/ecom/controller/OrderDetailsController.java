package com.ecom.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/api/admin/orders")
public class OrderDetailsController {

    @GetMapping("/details")
    public List<Order> getOrderDetails() {
        // Fetch order details from the database or any other source
        return Arrays.asList(
                new Order("John Doe", "01-10-2021", "Completed"),
                new Order("Jane Smith", "02-10-2021", "Pending"),
                new Order("Alice Johnson", "03-10-2021", "Processing")
        );
    }

    static class Order {
        private String user;
        private String date;
        private String status;

        public String getUser() {
			return user;
		}

		public void setUser(String user) {
			this.user = user;
		}

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public Order(String user, String date, String status) {
            this.user = user;
            this.date = date;
            this.status = status;
        }

        // Getters and setters (or lombok annotations) can be added here
    }
}

package com.ecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.ecom.entity.User;
import com.ecom.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public ResponseEntity<User> register(@RequestBody User user) {
        User registeredUser = userService.register(user);
        return new ResponseEntity<>(registeredUser, HttpStatus.CREATED);
    }

    @PostMapping("/login")
    public ResponseEntity<Object> login(@RequestBody User user) {
        String email = user.getEmail();
        String password = user.getPassword();
        
        // Check if the provided credentials match the admin credentials
        if (email.equals("admin@123") && password.equals("12345")) {
            // Return a success message for admin login
            return ResponseEntity.ok().body("{\"message\": \"Admin login successful!\"}");
        }

        // If not admin, proceed with regular user login
        User loggedInUser = userService.login(email, password);
        if (loggedInUser != null) {
            // Regular user login successful
            return ResponseEntity.ok().body("{\"message\": \"Login successful!\"}");
        } else {
            // User not registered or wrong credentials
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("{\"error\": \"User not registered or invalid credentials.\"}");
        }
    }

}

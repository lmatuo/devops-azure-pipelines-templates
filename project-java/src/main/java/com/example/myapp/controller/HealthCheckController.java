package com.example.myapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckController {

    @GetMapping("/health")
    public String checkHealth() {
        return "This project serves as a template for testing DevOps practices using a Java Spring Boot application.";
    }
}

package com.example.springboot.service;

import com.example.springboot.model.Product;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class ProductService {

    public List<Product> getAllProducts() {
        return Arrays.asList(
            new Product(1L, "Laptop", 50000.0),
            new Product(2L, "Phone", 20000.0)
        );
    }
}

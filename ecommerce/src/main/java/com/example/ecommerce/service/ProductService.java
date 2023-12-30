package com.example.ecommerce.service;

import com.example.ecommerce.dao.ProductDao;
import com.example.ecommerce.model.Product;
public class ProductService {
    private static ProductService instance;
    private ProductService() {}

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }
}

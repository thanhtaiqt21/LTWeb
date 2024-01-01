package com.example.ecommerce.service;

import com.example.ecommerce.dao.ProductDao;
import com.example.ecommerce.model.Product;

import java.sql.SQLException;
import java.util.List;

public class ProductService {
    private static ProductService instance;
    private ProductService() {}

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }
    public int addProduct(String title, String description, int price, double discount, int quantity, int categoryId) throws SQLException {
        return ProductDao.getInstance().addProduct(title, description, price, discount, quantity, categoryId);
    }
    public List<Product> getAllProduct() {
        return  ProductDao.getInstance().getAllProduct();
    }
    public List<Product> getProductByCID(String id) {
        return  ProductDao.getInstance().getProductByCID(id);
    }
}

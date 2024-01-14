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
    public List<Product> getProducts(int start, int total) {
        return ProductDao.getInstance().getProducts(start, total);
    }
    public long total() {
        return ProductDao.getInstance().totalProduct();
    }
    public List<Product> getAllProduct() {
        return  ProductDao.getInstance().getAllProduct();
    }
    public List<Product> getProductByCID(String id) {
        return  ProductDao.getInstance().getProductByCID(id);
    }

    public boolean deleteProductById(int id) {
        return ProductDao.getInstance().deleteProductById(id);
    }
    public boolean updateProduct(int id, String title, String description, int price, double discount, int quantity, int categoryId, int active) {
        return ProductDao.getInstance().updateProduct(id, title, description, price, discount, quantity, categoryId, active);
    }

    public Product getProductById(int id) {
        return ProductDao.getInstance().getProductById(id);
    }
}

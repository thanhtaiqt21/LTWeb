package com.example.ecommerce.service;

import com.example.ecommerce.dao.ProductDao;
import com.example.ecommerce.model.Product;

import java.sql.SQLException;
import java.util.List;

public class ProductService {
    private static ProductService instance;

    private ProductService() {
    }

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
    public List<Product> getProductsPagination(int id_category, int start, int total) {
        return ProductDao.getInstance().getProductsPagination(id_category, start, total);
    }

    public long total() {
        return ProductDao.getInstance().totalProduct();
    }
    public long totalProductPagination(int cId) {
        return ProductDao.getInstance().totalProductPagination(cId);
    }

    public List<Product> getAllProduct() {
        return ProductDao.getInstance().getAllProduct();
    }

    public List<Product> getProductByCID(int id) {
        return ProductDao.getInstance().getProductByCID(id);
    }

    public Product getProductByID(int id) {
        return ProductDao.getInstance().getProductByID(id);
    }
    public List<Product> getTop4ProductByCID(int id){
        return ProductDao.getInstance().getTop4ProductByCID(id);
    }


    public List<Product> getRelatedProducts(int categoryId) {
        return ProductDao.getInstance().getRelatedProducts(categoryId);
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

    public List<Product> getNewProducts() {
        return ProductDao.getInstance().getNewProducts();
    }

    public List<Product> getBestSellingProducts() {
        return ProductDao.getInstance().getBestSellingProducts();
    }

    public Product getBestSellingProduct() {
        return ProductDao.getInstance().getBestSellingProduct();
    }
    public List<Product> searchByName(String txtSearch) {
        return ProductDao.getInstance().searchByName(txtSearch);
    }
    public boolean updateQuantitySold(int id, int quantity, int sold) {
        return ProductDao.getInstance().updateQuantitySold(id, quantity, sold);
    }
}


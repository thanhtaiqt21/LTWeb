package com.example.ecommerce.service;

import com.example.ecommerce.dao.CategoryDao;

public class CategoryService {
    private static CategoryService instance;
    private CategoryService() {}

    public static CategoryService getInstance() {
        if (instance == null) {
            instance = new CategoryService();
        }
        return instance;
    }

    public boolean addCategory(String name) {
        return CategoryDao.getInstance().addCategory(name);
    }
}

package com.example.ecommerce.service;

import com.example.ecommerce.dao.CategoryDao;
import com.example.ecommerce.model.Category;

import java.util.List;

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

    public List<Category> getCategories(int start, int total) {
        return CategoryDao.getInstance().getCategories(start, total);
    }

    public long total() {
        return CategoryDao.getInstance().total();
    }
}

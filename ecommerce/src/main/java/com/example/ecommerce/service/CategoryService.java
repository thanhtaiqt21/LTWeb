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
    public Category getCategoryById(int id) {
        return CategoryDao.getInstance().getCategoryById(id);
    }

    public boolean updateCategory(String name, int status, int id) {
        return CategoryDao.getInstance().updateCategory(name, status, id);
    }

    public boolean deleteCategory(int id) {
        return CategoryDao.getInstance().deleteCategory(id);
    }
}

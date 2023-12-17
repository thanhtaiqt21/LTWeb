package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    private static CategoryDao instance;
    private CategoryDao(){}

    public static CategoryDao getInstance(){
        if (instance == null) {
            instance = new CategoryDao();
        }
        return instance;
    }

    public boolean addCategory(String name) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            if (name.isEmpty()) return false;
            preparedStatement = connection.prepareStatement("SELECT * FROM category WHERE name=?");
            preparedStatement.setString(1,name);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return false;
            } else {
                preparedStatement = connection.prepareStatement("INSERT INTO category(name) VALUES(?)");
                preparedStatement.setString(1,name);
                int i = preparedStatement.executeUpdate();
                if (i > 0 ) return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return false;
    }

    public boolean editCategory(String name, String status) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("UPDATE category SET name=?, active=?");
            preparedStatement.setString(1,name);
            if (status.equals("Hoạt động")) {
                preparedStatement.setInt(2, 1);
            } else {
                preparedStatement.setInt(2, 0);
            }
            int i = preparedStatement.executeUpdate();
            if (i > 0 ) return true;
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return false;
    }

    public List<Category> getCategories(int start, int total) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        List<Category> categories = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM category LIMIT ?, ? ");
            preparedStatement.setInt(1, start);
            preparedStatement.setInt(2, total);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                category.setStatus(rs.getInt("active"));
                category.setTimestamp(rs.getTimestamp("date_create"));
                categories.add(category);
            }
        }catch (SQLException e) {
            throw new RuntimeException();
        }
        return categories;
    }

    public long total() {
        long count = 0;
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) AS total FROM category");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return count;
    }

    public Category getCategoryById(int id) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        Category category;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM category WHERE id=?");
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                category.setStatus(rs.getInt("active"));
                category.setTimestamp(rs.getTimestamp("date_create"));
                return category;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public boolean deleteCategory(int id) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM category WHERE id=?");
            preparedStatement.setInt(1, id);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public boolean updateCategory(String name, int status, int id) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("UPDATE category SET name=?, active=? WHERE id=?");
            preparedStatement.setString(1,name);
            preparedStatement.setInt(2, status);
            preparedStatement.setInt(3, id);
            int i = preparedStatement.executeUpdate();
            if (i > 0 ) return true;
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return false;
    }
}

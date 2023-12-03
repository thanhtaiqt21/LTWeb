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


}

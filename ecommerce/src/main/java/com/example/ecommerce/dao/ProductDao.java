package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Product;

import java.sql.*;

public class ProductDao {
    private static ProductDao instance;
    private ProductDao(){}

    public static ProductDao getInstance(){
        if (instance == null) {
            instance = new ProductDao();
        }
        return instance;
    }

    public int addProduct(String title, String description, int price, double discount, int quantity, int categoryId) throws SQLException {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE title=?");
            preparedStatement.setString(1,title);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return 0;
            } else {
                preparedStatement = connection.prepareStatement("INSERT INTO product(title,description,price,discount,quantity,id_category) VALUES(?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setString(1,title);
                preparedStatement.setString(2,description);
                preparedStatement.setInt(3,price);
                preparedStatement.setDouble(4,discount);
                preparedStatement.setInt(5,quantity);
                preparedStatement.setInt(6,categoryId);
                int i = preparedStatement.executeUpdate();
                ResultSet rs1 = preparedStatement.getGeneratedKeys();
                if (rs1.next()) {
                    System.out.println(rs1.getInt(1));
                    return rs1.getInt(1);
                }
            }
        } catch (SQLException exception) {
            throw new RuntimeException();
        }
        return 0;
    }
}

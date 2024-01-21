package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    private static OrderDao instance;

    public static OrderDao getInstance() {
        if (instance == null)
            instance = new OrderDao();
        return instance;

    }

    public int addOrder(Orders order) {
        String query = "INSERT INTO orders (shipping_fee, total_price, address, phone, email, fullname,id_user, note)\n" +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        try (Connection connection = DBConnect.getInstance().getConnection();
             PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
            ps.setInt(1, order.getShippingFee());
            ps.setInt(2, order.getTotalPrice());
            ps.setString(3, order.getAddress());
            ps.setString(4, order.getPhone());
            ps.setString(5, order.getEmail());
            ps.setString(6, order.getFullname());
            ps.setInt(7, order.getIdUser());
            ps.setString(8, order.getNote());

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Order saved to the database successfully.");
            } else {
                System.out.println("Failed to save the order to the database.");
            }
            ResultSet rs1 = ps.getGeneratedKeys();
            if (rs1.next()) {
                System.out.println(rs1.getInt(1));
                return rs1.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

}
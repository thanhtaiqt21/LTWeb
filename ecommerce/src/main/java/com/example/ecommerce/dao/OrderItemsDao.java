package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderItemsDao {

    private static OrderItemsDao instance;

    public static OrderItemsDao getInstance() {
        if (instance == null)
            instance = new OrderItemsDao();
        return instance;

    }

    public boolean addOrderItem(int quantity, int totalPrice, int idProduct, int idOrder){
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO order_items(quantity,total_price,id_product,id_orders) VALUES (?,?,?,?)");
            preparedStatement.setInt(1,quantity);
            preparedStatement.setInt(2,totalPrice);
            preparedStatement.setInt(3,idProduct);
            preparedStatement.setInt(4,idOrder);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}

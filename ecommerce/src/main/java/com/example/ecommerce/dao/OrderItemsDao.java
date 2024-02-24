package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.OrderItems;
import com.example.ecommerce.service.ProductService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

    public List<OrderItems> getProductIds(int idOrder) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        List<OrderItems> list = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM order_items WHERE id_orders=?");
            preparedStatement.setInt(1,idOrder);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                list.add(new OrderItems(rs.getInt("id"),
                        rs.getInt("quantity"),
                        rs.getInt("total_price"),
                        rs.getInt("id_product"),
                        idOrder,
                        ProductService.getInstance().getProductById(rs.getInt("id_product"))));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}

package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Orders;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrdersHistoryDao {
    public List<Orders> getOrdersByUserId(int userId) {
        List<Orders> ordersList = new ArrayList<>();
        Connection connection = null; // Get your connection from a connection pool or similar
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnect.getInstance().getConnection(); // Initialize your connection here
            String sql = "SELECT * FROM orders WHERE id_user = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, userId);

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Orders order = new Orders();
                order.setId(resultSet.getInt("id"));
                order.setShippingFee(resultSet.getInt("shipping_fee"));
                order.setTotalPrice(resultSet.getInt("total_price"));
                order.setStatus(resultSet.getInt("status"));
                order.setDayCreate(resultSet.getTimestamp("day_create"));
                order.setAddress(resultSet.getString("address"));
                order.setPhone(resultSet.getString("phone"));
                order.setEmail(resultSet.getString("email"));
                order.setIdUser(resultSet.getInt("id_user"));
                order.setNote(resultSet.getString("note"));
                // add other fields
                ordersList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close all resources to prevent resource leaks
            if (resultSet != null) {
                try { resultSet.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (preparedStatement != null) {
                try { preparedStatement.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (connection != null) {
                try { connection.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }

        return ordersList;
    }

    public boolean deleteOrderById(int orderId) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DBConnect.getInstance().getConnection();
            connection.setAutoCommit(false);

            // Xóa các mục trong order_items trước
            String sqlDeleteOrderItems = "DELETE FROM order_items WHERE id_orders = ?";
            preparedStatement = connection.prepareStatement(sqlDeleteOrderItems);
            preparedStatement.setInt(1, orderId);
            preparedStatement.executeUpdate();

            // Xóa đơn hàng trong orders
            String sqlDeleteOrder = "DELETE FROM orders WHERE id = ?";
            preparedStatement = connection.prepareStatement(sqlDeleteOrder);
            preparedStatement.setInt(1, orderId);
            int rowsAffected = preparedStatement.executeUpdate();

            connection.commit();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            return false;
        } finally {
            // Close all resources to prevent resource leaks
            if (preparedStatement != null) {
                try { preparedStatement.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (connection != null) {
                try {
                    connection.setAutoCommit(true);
                    connection.close();
                } catch (SQLException e) { e.printStackTrace(); }
            }
        }
    }

}
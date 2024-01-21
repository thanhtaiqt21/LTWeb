package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrdersListDao {
    public List<Orders> getAllOrders() {
        List<Orders> ordersList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnect.getInstance().getConnection();
            String sql = "SELECT o.*, u.fullname FROM orders o INNER JOIN user u ON o.id_user = u.id";
            preparedStatement = connection.prepareStatement(sql);

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Orders order = new Orders();
                // Set properties for order from resultSet
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

                User user = new User();
                user.setFullname(resultSet.getString("fullname"));
                // Set other properties for user if needed

                order.setUser(user); // Assuming you add a User field in your Orders model
                ordersList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(resultSet, preparedStatement, connection);
        }
        return ordersList;
    }

    private void closeResources(ResultSet rs, Statement stmt, Connection conn) {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }

    public boolean updateOrderStatus(int orderId, int status) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = DBConnect.getInstance().getConnection();
            String sql = "UPDATE orders SET status = ? WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, status);
            preparedStatement.setInt(2, orderId);

            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            closeResources(null, preparedStatement, connection);
        }
    }
}

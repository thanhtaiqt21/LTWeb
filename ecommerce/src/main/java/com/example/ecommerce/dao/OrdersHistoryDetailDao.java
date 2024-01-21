package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.OrderItems;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class OrdersHistoryDetailDao {


    public Orders getOrderDetail(int orderId) {
        Orders orderDetail = new Orders();
        List<OrderItems> orderItemsList = new ArrayList<>();

        try (Connection connection = DBConnect.getInstance().getConnection()) {
            String sqlOrder = "SELECT * FROM orders WHERE id = ?";
            try (PreparedStatement preparedStatementOrder = connection.prepareStatement(sqlOrder)) {
                preparedStatementOrder.setInt(1, orderId);
                ResultSet resultSetOrder = preparedStatementOrder.executeQuery();
                if (resultSetOrder.next()) {
                    orderDetail.setId(resultSetOrder.getInt("id"));
                    orderDetail.setShippingFee(resultSetOrder.getInt("shipping_fee"));
                    orderDetail.setTotalPrice(resultSetOrder.getInt("total_price"));
                    orderDetail.setStatus(resultSetOrder.getInt("status"));
                    orderDetail.setDayCreate(resultSetOrder.getTimestamp("day_create"));
                    orderDetail.setAddress(resultSetOrder.getString("address"));
                    orderDetail.setPhone(resultSetOrder.getString("phone"));
                    orderDetail.setEmail(resultSetOrder.getString("email"));
                    orderDetail.setIdUser(resultSetOrder.getInt("id_user"));
                    orderDetail.setNote(resultSetOrder.getString("note"));
                }
            }

            String sqlItems = "SELECT oi.*, p.title, p.description, p.price, MAX(i.img_url) as img_url " +
                    "FROM order_items oi " +
                    "JOIN product p ON oi.id_product = p.id " +
                    "LEFT JOIN img i ON p.id = i.id_product " +
                    "WHERE oi.id_orders = ? " +
                    "GROUP BY oi.id, p.title, p.description, p.price";
            try (PreparedStatement preparedStatementItems = connection.prepareStatement(sqlItems)) {
                preparedStatementItems.setInt(1, orderId);
                ResultSet resultSetItems = preparedStatementItems.executeQuery();
                while (resultSetItems.next()) {
                    OrderItems orderItem = new OrderItems();
                    orderItem.setId(resultSetItems.getInt("id"));
                    orderItem.setQuantity(resultSetItems.getInt("quantity"));
                    orderItem.setTotalPrice(resultSetItems.getInt("total_price"));
                    orderItem.setIdProduct(resultSetItems.getInt("id_product"));

                    Product product = new Product();
                    product.setTitle(resultSetItems.getString("title"));
                    product.setDescription(resultSetItems.getString("description"));
                    product.setPrice(resultSetItems.getInt("price"));
                    product.setImgUrl(Collections.singletonList(resultSetItems.getString("img_url"))); // Sử dụng hình ảnh duy nhất

                    orderItem.setProduct(product);

                    orderItemsList.add(orderItem);
                }
            }

            orderDetail.setOrderItemsList(orderItemsList);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orderDetail;
    }
}
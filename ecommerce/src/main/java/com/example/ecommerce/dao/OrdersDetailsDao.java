package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.OrderItems;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class OrdersDetailsDao {
    public Orders getOrderDetails(int orderId) {
        Orders orderDetail = new Orders();
        List<OrderItems> orderItemsList = new ArrayList<>();

        try (Connection connection = DBConnect.getInstance().getConnection()) {
            // Truy vấn thông tin đơn hàng và thông tin người dùng
            String sqlOrder = "SELECT o.*, u.* FROM orders o JOIN user u ON o.id_user = u.id WHERE o.id = ?";
            try (PreparedStatement preparedStatementOrder = connection.prepareStatement(sqlOrder)) {
                preparedStatementOrder.setInt(1, orderId);
                ResultSet resultSetOrder = preparedStatementOrder.executeQuery();
                if (resultSetOrder.next()) {
                    // Lấy thông tin đơn hàng
                    orderDetail.setId(resultSetOrder.getInt("o.id"));
                    orderDetail.setShippingFee(resultSetOrder.getInt("o.shipping_fee"));
                    orderDetail.setTotalPrice(resultSetOrder.getInt("o.total_price"));
                    orderDetail.setStatus(resultSetOrder.getInt("o.status"));
                    orderDetail.setDayCreate(resultSetOrder.getTimestamp("o.day_create"));
                    orderDetail.setAddress(resultSetOrder.getString("o.address"));
                    orderDetail.setPhone(resultSetOrder.getString("o.phone"));
                    orderDetail.setEmail(resultSetOrder.getString("o.email"));
                    orderDetail.setIdUser(resultSetOrder.getInt("o.id_user"));
                    orderDetail.setNote(resultSetOrder.getString("o.note"));

                    // Lấy thông tin người dùng
                    User user = new User();
                    user.setId(resultSetOrder.getInt("u.id"));
                    user.setFullname(resultSetOrder.getString("u.fullname"));
                    user.setEmail(resultSetOrder.getString("u.email"));
                    user.setPhone(resultSetOrder.getString("u.phone"));
                    // Tiếp tục lấy các trường khác của người dùng nếu cần
                    // Ví dụ: user.setEmail(resultSetOrder.getString("u.email"));

                    // Đặt thông tin người dùng vào đơn hàng
                    orderDetail.setUser(user);
                }
            }

            // Truy vấn chi tiết sản phẩm trong đơn hàng
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

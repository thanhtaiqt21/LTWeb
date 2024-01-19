package com.example.ecommerce.service;

import com.example.ecommerce.dao.OrdersHistoryDao;
import com.example.ecommerce.model.Orders;
import java.util.List;

public class OrdersHistoryService {
    public List<Orders> getOrdersForUser(int userId) {
        OrdersHistoryDao dao = new OrdersHistoryDao();
        return dao.getOrdersByUserId(userId);
    }
    public boolean deleteOrder(int orderId) {
        OrdersHistoryDao dao = new OrdersHistoryDao();
        return dao.deleteOrderById(orderId);
    }
}

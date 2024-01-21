package com.example.ecommerce.service;

import com.example.ecommerce.dao.OrdersListDao;
import com.example.ecommerce.model.Orders;

import java.util.List;

public class OrdersListService {

        private OrdersListDao dao = new OrdersListDao();

        public List<Orders> getAllOrders() {
            return dao.getAllOrders();
        }

    public boolean updateOrderStatus(int orderId, int status) {
        return dao.updateOrderStatus(orderId, status);
    }
    }

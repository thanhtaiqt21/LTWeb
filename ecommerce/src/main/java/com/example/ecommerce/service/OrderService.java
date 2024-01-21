package com.example.ecommerce.service;

import com.example.ecommerce.dao.OrderDao;
import com.example.ecommerce.dao.OrdersHistoryDao;
import com.example.ecommerce.model.Orders;
import java.util.List;

public class OrderService {
    private static OrderService instance;

    public OrderService(){}

    public static OrderService getInstance(){
        if (instance == null) {
            instance = new OrderService();
        }
        return instance;
    }
    public int addOrder(Orders order) {
        return OrderDao.getInstance().addOrder(order);
    }

    public long totalOrders() {
        return OrderDao.getInstance().totalOrders();
    }

    public long totalOrdersWaitting() {
        return OrderDao.getInstance().totalOrderWaitting();
    }
}

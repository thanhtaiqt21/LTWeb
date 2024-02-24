package com.example.ecommerce.service;

import com.example.ecommerce.dao.OrderItemsDao;
import com.example.ecommerce.model.OrderItems;

import java.util.List;

public class OrderItemsService {
    private static OrderItemsService instance;

    public OrderItemsService(){}

    public static OrderItemsService getInstance(){
        if (instance == null) {
            instance = new OrderItemsService();
        }
        return instance;
    }

    public boolean addOrderItem(int quantity, int totalPrice, int idProduct, int idOrder) {
        return OrderItemsDao.getInstance().addOrderItem(quantity, totalPrice, idProduct, idOrder);
    }
    public List<OrderItems> getProductIds(int idOrder) {
        return OrderItemsDao.getInstance().getProductIds(idOrder);
    }
}

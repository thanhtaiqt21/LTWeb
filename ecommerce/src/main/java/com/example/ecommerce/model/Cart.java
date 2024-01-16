package com.example.ecommerce.model;

import java.util.ArrayList;
import java.util.HashMap;

public class Cart {
    public ArrayList<Item> cart;
    HashMap<Integer, Product> data;

    public Cart() {
        this.cart = new ArrayList<>();
        this.data = new HashMap<>();
    }

    public Product get(int id) {
        return data.get(id);
    }

    public int put(Product item) {
        Item newItem = new Item(item, 1);
        cart.add(newItem); // Thêm newItem vào cart
        return newItem.getQuantity();
    }

    public int put(int id, int quantity) {
        if (data.containsKey(id)) {
            data.get(id).quantityUp(quantity);
        }
        return data.get(id).getQuantity();
    }

    public ArrayList<Item> getItems() {
        return cart;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cart=" + cart +
                ", data=" + data +
                '}';
    }
}
package com.example.ecommerce.model;

import com.example.ecommerce.service.ProductService;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

public class Cart {
    HashMap<Integer, CartItem> data;

    public Cart() {
        this.data = new HashMap<>();
    }

    public CartItem get(int id) {
        return data.get(id);
    }

    public int put(CartItem item) {
        Product product = ProductService.getInstance().getProductById(item.getId());
        if (data.containsKey(item.getId())) {
            if (data.get(item.getId()).getQuantity() + 1 <= product.getQuantity()) {
                data.get(item.getId()).quantityUp();
            } else {
                data.get(item.getId()).setQuantity(product.getQuantity());
            }
        } else {
            data.put(item.getId(), item);
        }
        return data.get(item.getId()).getQuantity();
    }

    public int put(int id, int quantity) {
        Product product = ProductService.getInstance().getProductById(id);
        if (data.containsKey(id) && data.get(id).getQuantity() + quantity <= product.getQuantity()) {
            data.get(id).quantityUp(quantity);
        }
        return data.get(id).getQuantity();
    }

    public Collection<CartItem> getItems() {
        return data.values();
    }

    public boolean remove(int id) {
        return data.remove(id) == null;
    }

    public int total() {
        int num = 0;
        for (CartItem item: getItems()) {
            num += item.getQuantity() * (item.getProduct().getPrice() - (int)(item.getProduct().getPrice()*item.getProduct().getDiscount()));
        }
        return num;
    }

    public void update(int id, int quantity) {
        Product product = ProductService.getInstance().getProductById(id);
        if (quantity > product.getQuantity()) {
            data.get(id).setQuantity(product.getQuantity());
        } else {
            data.get(id).setQuantity(quantity);
        }
    }
}
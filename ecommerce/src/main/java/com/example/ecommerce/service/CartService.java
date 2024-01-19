package com.example.ecommerce.service;

import com.example.ecommerce.model.CartItem;
import com.example.ecommerce.model.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CartService {
    private static CartService instance;
    private Map<Integer, Product> cartItems;

    private CartService() {
        this.cartItems = new HashMap<>();
    }

    public static CartService getInstance() {
        if (instance == null) {
            instance = new CartService();
        }
        return instance;
    }


//    public List<CartItem> getCartItems(HttpServletRequest request) {
//        // Lấy giỏ hàng từ session
//        HttpSession session = request.getSession();
//        CartService currentCartService = (CartService) session.getAttribute("cartService");
//        if (currentCartService != null) {
//            List<CartItem> cartItems = new ArrayList<>();
//            for (Map.Entry<Integer, Product> entry : currentCartService.cartItems.entrySet()) {
//                Product product = entry.getValue();
//                int quantity = entry.getKey();
//                CartItem cartItem = new Item(product, quantity);
//                cartItems.add(cartItem);
//            }
//            return cartItems;
//        }
//        return new ArrayList<>();
//    }

    public boolean isCartEmpty() {
        return cartItems.isEmpty();
    }
}
package com.example.ecommerce.controller.cart;

import com.example.ecommerce.dao.ProductDao;
import com.example.ecommerce.model.Cart;
import com.example.ecommerce.model.Item;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.CartService;
import com.example.ecommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/addToCart")
public class AddToCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Cart c = (Cart) session.getAttribute("cart");

        if (c == null) {
            c = new Cart();
            c.cart = c.getItems(); // Gán danh sách mục cho cart
        }

        if (c.get(productId) != null) {
            c.put(productId, quantity);
        } else {
            Product p = ProductService.getInstance().getProductByID(productId);
            if (p != null) {
                c.put(p);
            }
        }

        // Thêm sản phẩm vào giỏ hàng
        session.setAttribute("cart", c);

        response.sendRedirect("cart.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
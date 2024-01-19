package com.example.ecommerce.controller.cart;

import com.example.ecommerce.model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(value = "/cart-remove")
public class RemoveCartItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        int id = Integer.parseInt(req.getParameter("id"));
        cart.remove(id);
        session.setAttribute("cart", cart);
        resp.sendRedirect("/ecommerce/cart.jsp");
    }
}

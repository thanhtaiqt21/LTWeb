package com.example.ecommerce.controller.Orders;

import com.example.ecommerce.model.Orders;
import com.example.ecommerce.model.User;
import com.example.ecommerce.service.OrdersHistoryService;
import com.google.gson.Gson;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrdersHistory", urlPatterns = {"/orders-history"})
public class OrdersHistoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        OrdersHistoryService service = new OrdersHistoryService();
        List<Orders> ordersList = service.getOrdersForUser(user.getId());

        String json = new Gson().toJson(ordersList);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }
}
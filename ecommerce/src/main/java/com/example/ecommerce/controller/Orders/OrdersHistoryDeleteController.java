package com.example.ecommerce.controller.Orders;

import com.example.ecommerce.service.OrdersHistoryService;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "OrdersHistoryDeleteController", urlPatterns = {"/delete-order"})
public class OrdersHistoryDeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        OrdersHistoryService service = new OrdersHistoryService();

        boolean isDeleted = service.deleteOrder(orderId);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"success\": " + isDeleted + "}");
    }
}
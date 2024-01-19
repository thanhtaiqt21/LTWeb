package com.example.ecommerce.controller.Orders;

import com.example.ecommerce.model.Orders;
import com.example.ecommerce.dao.OrdersHistoryDetailDao;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OrdersHistoryDetailServlet", urlPatterns = {"/order-detail"})
public class OrdersHistoryDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        OrdersHistoryDetailDao dao = new OrdersHistoryDetailDao();
        Orders orderDetail = dao.getOrderDetail(orderId);

        String json = new Gson().toJson(orderDetail);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }
}

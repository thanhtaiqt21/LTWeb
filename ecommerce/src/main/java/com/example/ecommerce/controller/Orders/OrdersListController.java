package com.example.ecommerce.controller.Orders;

import com.example.ecommerce.model.Orders;
import com.example.ecommerce.service.OrdersListService;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrdersList", urlPatterns = {"/adminpage/order-list","/adminpage/update-order-status"})
public class OrdersListController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrdersListService service = new OrdersListService();
        List<Orders> ordersList = service.getAllOrders();

        String json = new Gson().toJson(ordersList);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        int status = Integer.parseInt(request.getParameter("status"));

        OrdersListService service = new OrdersListService();
        boolean updateResult = service.updateOrderStatus(orderId, status);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(new ResponseObject(updateResult)));
    }

    private static class ResponseObject {
        boolean success;

        public ResponseObject(boolean success) {
            this.success = success;
        }
    }
}
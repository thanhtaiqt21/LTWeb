package com.example.ecommerce.controller.Orders;

import com.example.ecommerce.model.OrderItems;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.OrderItemsService;
import com.example.ecommerce.service.OrdersListService;
import com.example.ecommerce.service.ProductService;
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
        System.out.println(status);

        OrdersListService service = new OrdersListService();
        boolean updateResult = service.updateOrderStatus(orderId, status);
        if (updateResult && status==1) {
            List<OrderItems> list = OrderItemsService.getInstance().getProductIds(orderId);
            for (OrderItems item: list) {
                ProductService.getInstance().updateQuantitySold(item.getIdProduct(), item.getProduct().getQuantity() - item.getQuantity(), item.getProduct().getSold()+ item.getQuantity());
            }
        }

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
//package com.example.ecommerce.controller.Orders;
//
//import com.example.ecommerce.model.*;
//import com.example.ecommerce.service.OrderItemsService;
//import com.example.ecommerce.service.OrderService;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.Timestamp;
//import java.util.ArrayList;
//import java.util.List;
//
//@WebServlet(value = "/che")
//public class CreateOrderServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Lấy giỏ hàng từ session
//        Cart cart = (Cart) request.getSession().getAttribute("cart");
//        User user = (User) request.getSession().getAttribute("user");
//        Orders order = new Orders();
//        order.setShippingFee(0);
//        order.setTotalPrice(cart.total());
//        order.setAddress(request.getParameter("address"));
//        order.setPhone(request.getParameter("phone"));
//        order.setEmail(request.getParameter("email"));
//        order.setIdUser(user.getId());
//        order.setFullname(request.getParameter("fullname"));
//        order.setNote(request.getParameter("note"));
//
//        int addSuccess = OrderService.getInstance().addOrder(order);
//        System.out.println("id cua don hang" +addSuccess);
//        if (addSuccess > 0) {
//            for (CartItem cartItem : cart.getItems()) {
//                OrderItemsService.getInstance().addOrderItem(cartItem.getQuantity(),cartItem.price(),cartItem.getProduct().getId(),addSuccess);
//            }
//        }
//        // Tạo danh sách OrderItems từ giỏ hàng
////        for (CartItem cartItem : cart.getItems()) {
////            Product product = cartItem.getProduct();
////            OrderItems orderItem = new OrderItems();
////            orderItem.setQuantity(cartItem.getQuantity());
////            orderItem.setTotalPrice(cartItem.price());
////            orderItem.setIdProduct(product.getId());
////            orderItem.setProduct(product);
////            orderItemsList.add(orderItem);
////        }
////        request.setAttribute("orderItemsList", orderItemsList);
////        request.getRequestDispatcher("checkout.jsp").forward(request, response);
////        System.out.println(orderItemsList);
////
////        Orders order = new Orders();
////        order.setOrderItemsList(orderItemsList);
////        order.setShippingFee(0);
////        order.setTotalPrice(cart.total());
////        order.setStatus(1); order.setDayCreate(new Timestamp(System.currentTimeMillis()));
////        order.setAddress(request.getParameter("address"));
////        order.setPhone(request.getParameter("phone"));
////        order.setEmail(request.getParameter("email"));
////        order.setIdUser(1);
////        order.setFullname(request.getParameter("fullname"));
////        order.setNote(request.getParameter("note"));
////
////        // Thêm đơn hàng vào cơ sở dữ liệu
////        OrderService orderService = new OrderService();
////        orderService.addOrder(order);
////
////        // Xóa giỏ hàng sau khi đặt hàng thành công
////        cart.clear();
////
////        // Chuyển hướng đến trang hoàn thành đơn hàng
////        response.sendRedirect(request.getContextPath() + "/confirmation.jsp");
//    }
//}
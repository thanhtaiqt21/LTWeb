//package com.example.ecommerce.controller;
//
//import com.example.ecommerce.model.User;
//import com.example.ecommerce.service.UserService;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//
//@WebServlet(name = "UpdateProfile", value = "/update_profile")
//public class UpdateProfileController extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        // Kiểm tra xem người dùng đã đăng nhập hay chưa
//        HttpSession session = req.getSession();
//        User user = (User) session.getAttribute("user");
//        if (user != null) {
//            // Người dùng đã đăng nhập, chuyển hướng đến trang update_profile.jsp
//            req.getRequestDispatcher("/update_profile.jsp").forward(req, resp);
//        } else {
//            // Người dùng chưa đăng nhập, chuyển hướng đến trang đăng nhập
//            resp.sendRedirect(req.getContextPath() + "/login.jsp");
//        }
//    }
//}
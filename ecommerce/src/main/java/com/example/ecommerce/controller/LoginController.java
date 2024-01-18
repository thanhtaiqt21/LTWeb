package com.example.ecommerce.controller;

import com.example.ecommerce.model.User;
import com.example.ecommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = "/doLogin")
public class LoginController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = UserService.getInstance().checkLogin(username,password);
        if (user != null) {
            // Đăng nhập thành công, thêm username vào session
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect("/ecommerce/home");
        } else {
            req.setAttribute("error", "Đăng nhập thất bại");
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
        }
    }
}

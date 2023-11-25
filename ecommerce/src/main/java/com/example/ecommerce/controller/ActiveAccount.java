package com.example.ecommerce.controller;

import com.example.ecommerce.service.UserService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "AccountActive",urlPatterns = {"/AccountActive"})
public class ActiveAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("key1");
        String hash = req.getParameter("key2");
        boolean verifyEmail = UserService.getInstance().verifyEmail(email, hash);
        if (verifyEmail) {
            resp.sendRedirect("/ecommerce/login.jsp");
        } else {
            resp.sendRedirect("/ecommerce/register.jsp");
        }

    }
}

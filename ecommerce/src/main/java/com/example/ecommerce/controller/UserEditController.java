package com.example.ecommerce.controller;

import com.example.ecommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserEditController", value = "/adminpage/user-edit")
public class UserEditController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userIdParam = req.getParameter("userId");
        String statusParam = req.getParameter("status");
        String roleParam = req.getParameter("role");

        if (userIdParam != null && statusParam != null && roleParam != null &&
                !userIdParam.isEmpty() && !statusParam.isEmpty() && !roleParam.isEmpty()) {
            int userId = Integer.parseInt(userIdParam);
            int status = Integer.parseInt(statusParam);
            String role = roleParam;

            // Assuming you have a method to update user status and role in your service
            boolean updated = UserService.getInstance().updateUserStatusAndRole(userId, status, role);

            if (updated) {
                // Redirect to user-list.jsp or another page upon successful update
                resp.sendRedirect(req.getContextPath() + "/adminpage/user-list");
            }
        }
    }
}
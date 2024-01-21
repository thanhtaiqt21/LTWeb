package com.example.ecommerce.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.ecommerce.dao.UserDao;
import com.example.ecommerce.model.User;
import com.example.ecommerce.service.UserService;

@WebServlet("/updateInfor")
public class ChangInfor extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        int hashcode = hashCode();

        User user = (User) session.getAttribute("user");

        boolean success = UserService.getInstance().updateInfor(fullname, email, phone, user.getId(), hashcode);

        if (success) {
            request.setAttribute("success", "true");
            request.getRequestDispatcher("/verify-email.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Cập nhật thông tin thất bại");
            request.getRequestDispatcher("/update_profile.jsp").forward(request, response);
        }

        // Sau khi cập nhật thông tin thành công
        User updatedUser = UserService.getInstance().getUserById(user.getId());
        session.setAttribute("user", updatedUser);
    }
}
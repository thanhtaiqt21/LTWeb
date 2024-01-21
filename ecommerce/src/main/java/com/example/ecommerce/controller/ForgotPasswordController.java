package com.example.ecommerce.controller;

import com.example.ecommerce.dao.UserDao;
import com.example.ecommerce.model.User;
import com.example.ecommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/doForgotPassword")
public class ForgotPasswordController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String email = req.getParameter("email");

        String newPassword = UserService.getInstance().generateNewPassword();

        boolean resetPasswordSuccess = UserService.getInstance().resetPassword(email, newPassword);

        if (resetPasswordSuccess) {
            UserService.getInstance().sendPasswordResetEmail(email);
            System.out.println("Email sent to: " + email);

            resp.sendRedirect("/ecommerce/pass-email.jsp");
        } else {
            req.setAttribute("error", "Không thể đặt lại mật khẩu. Vui lòng thử lại sau.");
            req.getRequestDispatcher("forgotPass.jsp").forward(req, resp);
        }

    }


}

package com.example.ecommerce.controller;

import com.example.ecommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/doChangePassword")
public class ChangePassword extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("username");

        String currentPassword = req.getParameter("currentPassword");
        String newPassword = req.getParameter("newPassword");
        String confirmNewPassword = req.getParameter("confirmNewPassword");

        // Kiểm tra mật khẩu mới có ít nhất 8 ký tự
        if (newPassword.length() < 8) {
            req.setAttribute("error", "Mật khẩu mới phải có ít nhất 8 ký tự");
            req.getRequestDispatcher("/changePass.jsp").forward(req, resp);
            return;
        }

        // Kiểm tra mật khẩu mới và nhập lại mật khẩu mới có khớp nhau không
        if (!newPassword.equals(confirmNewPassword)) {
            req.setAttribute("error", "Nhập lại mật khẩu mới không khớp");
            req.getRequestDispatcher("/changePass.jsp").forward(req, resp);
            return;
        }

        boolean success = UserService.getInstance().changePassword(username, currentPassword, newPassword);

        if (success) {
            req.setAttribute("success", "Thay đổi mật khẩu thành công");
            resp.sendRedirect("/ecommerce/index.jsp");
        } else {
            req.setAttribute("error", "Thay đổi mật khẩu thất bại");
            req.getRequestDispatcher("/changePass.jsp").forward(req, resp);
        }
    }
}

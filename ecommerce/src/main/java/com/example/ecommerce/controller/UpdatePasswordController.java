package com.example.ecommerce.controller;

import com.example.ecommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatePassword")
public class UpdatePasswordController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String newPassword = req.getParameter("newPassword");

        boolean updatePasswordSuccess = UserService.getInstance().resetPassword(email, newPassword);

        if (updatePasswordSuccess) {
            // Mật khẩu đã được cập nhật thành công
            resp.sendRedirect("/ecommerce/login.jsp");
        } else {
            // Có lỗi xảy ra khi cập nhật mật khẩu
            req.setAttribute("error", "Không thể cập nhật mật khẩu. Vui lòng thử lại sau.");
            req.getRequestDispatcher(".jsp").forward(req, resp);
        }
    }
}

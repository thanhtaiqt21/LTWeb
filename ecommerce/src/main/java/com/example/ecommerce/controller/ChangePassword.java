package com.example.ecommerce.controller;
import com.example.ecommerce.model.User;
import com.example.ecommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ChangePassword", urlPatterns = "/doChangePassword")
public class ChangePassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmNewPassword = request.getParameter("confirmNewPassword");

        PrintWriter out = response.getWriter();

        if (user != null && UserService.getInstance().checkPassword(user.getUsername(), currentPassword)) {
            if (newPassword.equals(confirmNewPassword)) {
                UserService.getInstance().changePassword(user.getId(), newPassword);
                out.println("<script type='text/javascript'>");
                out.println("alert('Mật khẩu đã được thay đổi thành công.');");
                out.println("location='/ecommerce/home';");
                out.println("</script>");
            } else {
                out.println("<script type='text/javascript'>");
                out.println("alert('Mật khẩu mới và mật khẩu xác nhận không khớp.');");
                out.println("location='changePass.jsp';");
                out.println("</script>");
            }
        } else {
            out.println("<script type='text/javascript'>");
            out.println("alert('Mật khẩu hiện tại không chính xác.');");
            out.println("location='changePass.jsp';");
            out.println("</script>");
        }
    }
}
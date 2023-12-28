package com.example.ecommerce.controller.contact;

import com.example.ecommerce.model.Contact;
import com.example.ecommerce.sendmail.SendMail;
import com.example.ecommerce.service.ContactUsService;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ContactUsController", value = "/contact-us")
public class ContactUsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Xử lý lấy thông tin liên hệ
        Contact contactInfo = ContactUsService.getInstance().getContactInfo();

        // Truyền dữ liệu dưới dạng JSON
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(new Gson().toJson(contactInfo));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String subject = req.getParameter("subject");
        String message = req.getParameter("message");

        // Lấy địa chỉ email từ cơ sở dữ liệu
        String contactEmail = ContactUsService.getInstance().getContactInfo().getEmail();

        // Gửi email cho chức năng contact-us
        SendMail sendMail = new SendMail(email, message);
        sendMail.sendContactUsMail(contactEmail, name, subject, message, email); // Sử dụng email ở đây

        // Có thể thêm xử lý lưu thông tin vào database hoặc làm các công việc khác tùy ý

        // Trả về thông báo thành công cho client
        resp.getWriter().write("Message sent successfully!");
    }
}

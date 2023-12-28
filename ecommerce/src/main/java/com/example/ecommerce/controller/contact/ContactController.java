package com.example.ecommerce.controller.contact;

import com.example.ecommerce.model.Contact;
import com.example.ecommerce.service.ContactService;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ContactController", value = "/adminpage/contact")
public class ContactController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Contact contactInfo = ContactService.getInstance().getContactInfo();

        // Truyền dữ liệu dưới dạng JSON
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(new Gson().toJson(contactInfo));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Nhận dữ liệu mới từ trang jsp
        String newAddress = req.getParameter("address");
        String newEmail = req.getParameter("email");
        String newPhone = req.getParameter("phone");
        String newWorkingTimeMF = req.getParameter("workingTimeMF");
        String newWorkingTimeSA = req.getParameter("workingTimeSA");
        String newWorkingTimeSU = req.getParameter("workingTimeSU");
        String newGreeting = req.getParameter("greeting");

        // Lưu thông tin mới vào cơ sở dữ liệu
        ContactService.getInstance().updateContactInfo(
                newAddress, newEmail, newPhone, newWorkingTimeMF, newWorkingTimeSA, newWorkingTimeSU, newGreeting
        );

        // Trả về thông báo hoặc mã trạng thái thành công (nếu cần)
        resp.getWriter().write("Contact info updated successfully");
    }
}
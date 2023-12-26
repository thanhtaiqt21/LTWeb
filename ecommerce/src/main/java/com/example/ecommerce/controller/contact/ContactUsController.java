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

@WebServlet(name = "ContactUsController", value = "/contact-us")
public class ContactUsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Contact contactInfo = ContactService.getInstance().getContactInfo();

        // Truyền dữ liệu dưới dạng JSON
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(new Gson().toJson(contactInfo));
    }
}
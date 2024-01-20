package com.example.ecommerce.controller.home;

import com.example.ecommerce.service.ProductService;
import com.example.ecommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/adminpage/home")
public class AdminHomePage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long totalUser = UserService.getInstance().total();
        long totalProduct = ProductService.getInstance().total();
        long totalOrder = 10;
        long totalOrderWaitting = 10;
        req.setAttribute("totalUser",totalUser);
        req.setAttribute("totalProduct",totalProduct);
        req.setAttribute("totalOrder",totalOrder);
        req.setAttribute("totalOrderWaitting",totalOrderWaitting);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}

//package com.example.ecommerce.controller.product;
//
//import com.example.ecommerce.model.Category;
//import com.example.ecommerce.model.Product;
//import com.example.ecommerce.service.CategoryService;
//import com.example.ecommerce.service.ProductService;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet(name = "LoadProduct", value = "/products")
//public class LoadProduct extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html;charset=UTF-8");
//        int id = Integer.parseInt(req.getParameter("cId"));
//        List<Product> list = ProductService.getInstance().getProductByCID(id);
//
//        req.setAttribute("listP",list);
//        req.getRequestDispatcher("list-product.jsp").forward(req, resp);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//    }
//}

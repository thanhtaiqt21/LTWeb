package com.example.ecommerce.controller.product;

import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "ProductDetail", value = "/detail")
public class ProductDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String id = req.getParameter("pid");
        Product p = ProductService.getInstance().getProductByID(id);

        String cid = req.getParameter("cid");
        List<Product> list = ProductService.getInstance().getRelatedProducts(cid);

        req.setAttribute("detail", p);
        req.setAttribute("listLP", list);
        req.getRequestDispatcher("product.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}

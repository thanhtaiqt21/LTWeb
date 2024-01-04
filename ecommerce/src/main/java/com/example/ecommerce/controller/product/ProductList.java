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

@WebServlet(name = "ProductList", value = "/adminpage/product-list")
public class ProductList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = 1;
        int recordPerPage = 10;
        long totalProduct = ProductService.getInstance().total();
        if (req.getParameter("page") != null) {
            page = Integer.parseInt(req.getParameter("page"));
        }
        List<Product> products = ProductService.getInstance().getProducts((page -1) * recordPerPage, recordPerPage);
        int numOfPage = (int) Math.ceil(totalProduct * 1.0/recordPerPage);
        req.setAttribute("products", products);
        req.setAttribute("numOfPage", numOfPage);
        req.setAttribute("currentPage", page);
        req.getRequestDispatcher("product-list.jsp").forward(req, resp);
    }
}

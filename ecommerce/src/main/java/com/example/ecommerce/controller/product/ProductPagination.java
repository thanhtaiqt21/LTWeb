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

@WebServlet(name = "ProductPagination", value = "/pagination")
public class ProductPagination extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("cId"));
        int page = 1;
        int recordPerPage = 4;
        long totalProduct = ProductService.getInstance().totalProductPagination();
        if (req.getParameter("page") != null) {
            page = Integer.parseInt(req.getParameter("page"));
        }
        List<Product> products = ProductService.getInstance().getProductsPagination(id,(page -1) * recordPerPage, recordPerPage);
        int numOfPage = (int) Math.ceil(totalProduct * 1.0/recordPerPage);
        req.setAttribute("cId", id);
        req.setAttribute("listP", products);
        req.setAttribute("numOfPage", numOfPage);
        req.setAttribute("currentPage", page);
        req.getRequestDispatcher("list-product.jsp").forward(req, resp);
    }
}

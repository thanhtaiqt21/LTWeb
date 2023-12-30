package com.example.ecommerce.controller.product;

import com.example.ecommerce.dao.CategoryDao;
import com.example.ecommerce.dao.ProductDao;
import com.example.ecommerce.model.Category;
import com.example.ecommerce.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadProduct", value = "")
public class LoadProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        ProductDao pDao = new ProductDao();
        List<Product> list = pDao.getAllProduct();
        List<Category> listC = pDao.getAllCategory();

        req.setAttribute("listP",list);
        req.getSession().setAttribute("listC", listC);
        req.getRequestDispatcher("list-product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}

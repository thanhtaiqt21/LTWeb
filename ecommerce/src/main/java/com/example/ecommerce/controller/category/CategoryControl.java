package com.example.ecommerce.controller.category;

import com.example.ecommerce.dao.ProductDao;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryControl", value = "/category")
public class CategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String id_category = req.getParameter("id");

        ProductDao pDao = new ProductDao();
        List<Product> list = pDao.getProductByCID(id_category);

        req.getSession().setAttribute("listP", list);
        req.getRequestDispatcher("list-product.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}

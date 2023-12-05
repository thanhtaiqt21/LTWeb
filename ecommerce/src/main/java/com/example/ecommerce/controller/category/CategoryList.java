package com.example.ecommerce.controller.category;

import com.example.ecommerce.model.Category;
import com.example.ecommerce.service.CategoryService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryList", value = "/adminpage/category-list")
public class CategoryList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = 1;
        int recordPerPage = 5;
        long total = CategoryService.getInstance().total();
        if (req.getParameter("page") != null) {
            page = Integer.parseInt(req.getParameter("page"));
        }
        List<Category> categories = CategoryService.getInstance().getCategories((page -1)  * recordPerPage, recordPerPage);
        int numOfPage = (int) Math.ceil(total * 1.0 / recordPerPage);
        req.setAttribute("categories", categories);
        req.setAttribute("numOfPage", numOfPage);
        req.setAttribute("currentPage", page);

        RequestDispatcher view = req.getRequestDispatcher("category-list.jsp");
        view.forward(req, resp);
    }
}

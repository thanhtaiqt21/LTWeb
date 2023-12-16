package com.example.ecommerce.controller.category;

import com.example.ecommerce.model.Category;
import com.example.ecommerce.service.CategoryService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateCategory", value = "/adminpage/category-update")
public class UpdateCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Category category = CategoryService.getInstance().getCategoryById(id);
        req.setAttribute("category", category);
        req.getRequestDispatcher("/adminpage/category-edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String status = req.getParameter("status");
        int active = 0;
        if (status.equals("Hoạt động")) {
            active = 1;
        }
        CategoryService.getInstance().updateCategory(name, active, id);
        resp.sendRedirect("category-list");
    }
}

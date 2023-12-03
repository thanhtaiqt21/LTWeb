package com.example.ecommerce.controller.category;

import com.example.ecommerce.service.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddCategory", value = "/adminpage/addCategory")
public class AddCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        boolean addCategory = CategoryService.getInstance().addCategory(name);
        if (addCategory) {
            req.setAttribute("success","Thêm danh mục sản phẩm thành công");
            req.getRequestDispatcher("/adminpage/category-add.jsp").forward(req,resp);
        } else {
            req.setAttribute("error","Thêm danh mục sản phẩm thất bại");
            req.getRequestDispatcher("/adminpage/category-add.jsp").forward(req,resp);
        }
    }
}

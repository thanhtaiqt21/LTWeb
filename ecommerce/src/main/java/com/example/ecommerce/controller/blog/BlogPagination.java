package com.example.ecommerce.controller.blog;

import com.example.ecommerce.model.Blog;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.BlogService;
import com.example.ecommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogPagination", value = "/blogPage")
public class BlogPagination extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = 1;
        int recordPerPage = 3;
        long totalBlog = BlogService.getInstance().totalBlog();
        if (req.getParameter("page") != null) {
            page = Integer.parseInt(req.getParameter("page"));
        }
        List<Blog> blogs = BlogService.getInstance().getBlogPagination((page -1) * recordPerPage, recordPerPage);
        int numOfPage = (int) Math.ceil(totalBlog * 1.0/recordPerPage);
        req.setAttribute("listB", blogs);
        req.setAttribute("numOfPage", numOfPage);
        req.setAttribute("currentPage", page);
        req.getRequestDispatcher("blog-classic.jsp").forward(req, resp);
    }
}

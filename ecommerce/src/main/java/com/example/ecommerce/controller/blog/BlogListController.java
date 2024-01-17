package com.example.ecommerce.controller.blog;

import com.example.ecommerce.model.Blog;
import com.example.ecommerce.model.User;
import com.example.ecommerce.service.BlogService;
import com.example.ecommerce.service.UserService;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogListController", value = "/adminpage/blog-list")
public class BlogListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Blog> blogList = BlogService.getInstance().getAllBlogs();

        // Truyền dữ liệu dưới dạng JSON
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(new Gson().toJson(blogList));
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String blogIdParam = req.getParameter("blogId");
        if (blogIdParam != null && !blogIdParam.isEmpty()) {
            int blogId = Integer.parseInt(blogIdParam);
            boolean deleted = BlogService.getInstance().deleteBlog(blogId);

            if (deleted) {
                resp.getWriter().write("User deleted successfully");
            } else {
                resp.getWriter().write("Error deleting user");
            }
        } else {
            resp.getWriter().write("Invalid user ID");
        }
    }
}

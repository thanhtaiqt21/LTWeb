package com.example.ecommerce.controller.blog;

import com.example.ecommerce.service.BlogService;
import com.example.ecommerce.service.CloudinaryService;
import com.example.ecommerce.uploadImg.UploadImg;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogEditController", urlPatterns = {"/adminpage/blog-edit"})
@MultipartConfig(
        fileSizeThreshold = 1024*1024*10,
        maxFileSize = 1024*1024*50,
        maxRequestSize = 1024*1024*100
)
public class BlogEditController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int blogId = Integer.parseInt(req.getParameter("blogId"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        List<String> filePaths = new UploadImg().upload(req);
        String imgUrl = filePaths.isEmpty() ? "" : CloudinaryService.getInstance().uploadFile(filePaths.get(0));

        boolean isSuccess = BlogService.getInstance().updateBlog(blogId, title, content, imgUrl.isEmpty() ? req.getParameter("existingImageUrl") : imgUrl);

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        if (isSuccess) {
            resp.getWriter().write("{\"status\":\"success\"}");
        } else {
            resp.getWriter().write("{\"status\":\"error\"}");
        }
    }
}


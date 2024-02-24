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

@WebServlet(name = "AddBlog", value = "/adminpage/blog-add")
@MultipartConfig(
        fileSizeThreshold = 1024*1024*10,
        maxFileSize = 1024*1024*50,
        maxRequestSize = 1024*1024*100
)
public class AddBlog extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        List<String> filePaths = new UploadImg().upload(req);
        String imgUrl = CloudinaryService.getInstance().uploadFile(filePaths.get(0));
        boolean isSuccess = BlogService.getInstance().addBlog(title, content, imgUrl);
        if (isSuccess) {
            resp.sendRedirect("/ecommerce/adminpage/blog-list.jsp");
        }else {
            req.setAttribute("error","Thêm blog thất bại");
            req.getRequestDispatcher("/adminpage/blog-add.jsp").forward(req,resp);
        }
    }
}

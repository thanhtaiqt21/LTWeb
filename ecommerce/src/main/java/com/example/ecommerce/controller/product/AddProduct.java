package com.example.ecommerce.controller.product;

import com.example.ecommerce.model.Category;
import com.example.ecommerce.service.CategoryService;
import com.example.ecommerce.service.CloudinaryService;
import com.example.ecommerce.service.ImgService;
import com.example.ecommerce.service.ProductService;
import com.example.ecommerce.uploadImg.UploadImg;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AddProduct", value = "/adminpage/product-add")
@MultipartConfig(
        fileSizeThreshold = 1024*1024*10,
        maxFileSize = 1024*1024*50,
        maxRequestSize = 1024*1024*100
)
public class AddProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categories = CategoryService.getInstance().getCategories();
        req.setAttribute("categories", categories);
        req.getRequestDispatcher("/adminpage/product-add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        int price = Integer.parseInt(req.getParameter("price"));
        double discount = Double.parseDouble(req.getParameter("discount"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String category = req.getParameter("category");
        System.out.println(category);
        int categoryId = CategoryService.getInstance().getCategoryByName(category).getId();
        int i = 0;
        try {
            i = ProductService.getInstance().addProduct(title,description,price,discount,quantity,categoryId);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        if (i != 0) {
            List<String> filePaths = new UploadImg().upload(req);
            for (String filePath : filePaths) {
                String imgUrl = CloudinaryService.getInstance().uploadFile(filePath);
                ImgService.getInstance().addImg(imgUrl, i);
            }
            req.setAttribute("success","Thêm sản phẩm thành công");
            resp.sendRedirect("/ecommerce/adminpage/product-list");
        } else {
            req.setAttribute("error","Thêm sản phẩm thất bại");
            req.getRequestDispatcher("/adminpage/product-add.jsp").forward(req,resp);
        }
    }
}

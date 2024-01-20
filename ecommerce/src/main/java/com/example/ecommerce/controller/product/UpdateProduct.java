package com.example.ecommerce.controller.product;

import com.example.ecommerce.model.Category;
import com.example.ecommerce.model.Img;
import com.example.ecommerce.model.Product;
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
import java.util.List;

@WebServlet(name = "UpdateProduct", value = "/adminpage/product-update")
@MultipartConfig(
        fileSizeThreshold = 1024*1024*10,
        maxFileSize = 1024*1024*50,
        maxRequestSize = 1024*1024*100
)
public class UpdateProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = ProductService.getInstance().getProductById(id);
        List<Category> categories = CategoryService.getInstance().getCategories();
        List<Img> imgs = ImgService.getInstance().getImgUrlByProductId(id);
        Category category = CategoryService.getInstance().getCategoryById(product.getCategoryId());
        req.setAttribute("categoryName", category.getName());
        req.setAttribute("categories", categories);
        req.setAttribute("product", product);
        req.setAttribute("imgs", imgs);
        req.getRequestDispatcher("/adminpage/product-edit.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        int price = Integer.parseInt(req.getParameter("price"));
        double discount = Double.parseDouble(req.getParameter("discount"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String category = req.getParameter("category");
        int categoryId = CategoryService.getInstance().getCategoryByName(category).getId();
        String status = req.getParameter("status");
        int active = 0;
        if (status.equals("Hoạt động")) {
            active = 1;
        }
        List<String> filePaths = new UploadImg().upload(req);
        if (!filePaths.isEmpty()) {
            for (String filePath : filePaths) {
                String imgUrl = CloudinaryService.getInstance().uploadFile(filePath);
                ImgService.getInstance().addImg(imgUrl, id);
            }
        }
        boolean isSuccess = ProductService.getInstance().updateProduct(id, title, description, price, discount, quantity, categoryId, active);
        if (isSuccess) {
            resp.sendRedirect("product-list");
        } else {
            req.setAttribute("error", "Cập nhật sản phẩm thất bại");
            req.getRequestDispatcher("/admipage/product-edit.jsp").forward(req, resp);
        }
    }
}

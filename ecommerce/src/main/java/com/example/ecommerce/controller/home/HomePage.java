package com.example.ecommerce.controller.home;

import com.example.ecommerce.model.Blog;
import com.example.ecommerce.model.ImgSlide;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.BlogService;
import com.example.ecommerce.service.ImgSlideService;
import com.example.ecommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home", value = "/home")
public class HomePage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ImgSlide> imgSlides = ImgSlideService.getInstance().getImgSlides();
        List<Product> newProducts = ProductService.getInstance().getNewProducts();
        List<Product> bestSellingProducts = ProductService.getInstance().getBestSellingProducts();
        Product bestSellingProduct = ProductService.getInstance().getBestSellingProduct();
        List<Blog> newBlogs = BlogService.getInstance().getNewBlog();
        req.setAttribute("imgSlides", imgSlides);
        req.setAttribute("newProducts", newProducts);
        req.setAttribute("bestSellingProducts", bestSellingProducts);
        req.setAttribute("bestSellingProduct", bestSellingProduct);
        req.setAttribute("newBlogs", newBlogs);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}

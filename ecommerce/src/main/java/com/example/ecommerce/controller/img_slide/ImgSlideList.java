package com.example.ecommerce.controller.img_slide;

import com.example.ecommerce.model.ImgSlide;
import com.example.ecommerce.service.ImgService;
import com.example.ecommerce.service.ImgSlideService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ImgSlideList", value = "/adminpage/img-slide-list")
public class ImgSlideList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ImgSlide> imgSlides = ImgSlideService.getInstance().getImgSlides();
        for (ImgSlide imgSlide: imgSlides) {
            System.out.println(imgSlide.getId());
        }
        req.setAttribute("imgSlides", imgSlides);
        req.getRequestDispatcher("/adminpage/img-slide-list.jsp").forward(req, resp);
    }
}

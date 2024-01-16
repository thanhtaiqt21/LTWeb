package com.example.ecommerce.controller.img_slide;

import com.example.ecommerce.service.ImgSlideService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteImgSlide", value = "/adminpage/img-slide-delete")
public class DeleteImgSlide extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        boolean isSuccess = ImgSlideService.getInstance().deleteImgSlide(id);
        resp.sendRedirect("img-slide-list");
    }
}

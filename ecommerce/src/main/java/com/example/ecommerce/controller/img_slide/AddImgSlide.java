package com.example.ecommerce.controller.img_slide;

import com.example.ecommerce.service.CloudinaryService;
import com.example.ecommerce.service.ImgSlideService;
import com.example.ecommerce.uploadImg.UploadImg;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddImgSlide", value = "/adminpage/img-slide-add")
@MultipartConfig(
        fileSizeThreshold = 1024*1024*10,
        maxFileSize = 1024*1024*50,
        maxRequestSize = 1024*1024*100
)
public class AddImgSlide  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> filePaths = new UploadImg().upload(req);
        for (String filePath : filePaths) {
            String imgUrl = CloudinaryService.getInstance().uploadFile(filePath);
            ImgSlideService.getInstance().addImgSlide(imgUrl);
        }
        resp.sendRedirect("img-slide-list");
    }
}

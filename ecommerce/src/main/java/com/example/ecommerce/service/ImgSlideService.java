package com.example.ecommerce.service;

import com.example.ecommerce.dao.ImgSlideDao;
import com.example.ecommerce.model.ImgSlide;

import java.util.List;

public class ImgSlideService {
    private static ImgSlideService instance;
    private ImgSlideService(){}

    public static ImgSlideService getInstance(){
        if (instance == null) {
            instance = new ImgSlideService();
        }
        return instance;
    }

    public boolean addImgSlide(String imgUrl) {
        return ImgSlideDao.getInstance().addImgSlide(imgUrl);
    }

    public List<ImgSlide> getImgSlides() {
        return ImgSlideDao.getInstance().getImgSlides();
    }

    public boolean deleteImgSlide(int id) {
        return ImgSlideDao.getInstance().deleteImgSlide(id);
    }
}

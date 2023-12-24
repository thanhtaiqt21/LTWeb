package com.example.ecommerce.service;

import com.example.ecommerce.dao.ImgDao;

public class ImgService {
    private static ImgService instance;
    private ImgService() {}

    public static ImgService getInstance() {
        if (instance == null) {
            instance = new ImgService();
        }
        return instance;
    }
    public boolean addImg(String imgUrl, int productId) {
        return ImgDao.getInstance().addImg(imgUrl, productId);
    }
}

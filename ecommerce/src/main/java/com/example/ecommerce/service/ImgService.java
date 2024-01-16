package com.example.ecommerce.service;

import com.example.ecommerce.dao.ImgDao;
import com.example.ecommerce.model.Img;

import java.util.List;

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
    public List<Img> getImgUrlByProductId(int productId) {
        return ImgDao.getInstance().getImgUrlByProductId(productId);
    }
    public boolean deleteImgById(int id) {
        return ImgDao.getInstance().deleteImgById(id);
    }
}

package com.example.ecommerce.model;

public class ImgSlide {
    private int id;
    private String imgUrl;

    public ImgSlide(int id, String imgUrl) {
        this.id = id;
        this.imgUrl = imgUrl;
    }

    public int getId() {
        return id;
    }

    public String getImgUrl() {
        return imgUrl;
    }
}

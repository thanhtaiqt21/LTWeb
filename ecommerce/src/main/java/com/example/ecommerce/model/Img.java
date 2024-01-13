package com.example.ecommerce.model;

public class Img {
    private int id;
    private String imgUrl;
    private int productId;

    public Img() {
    }
    public Img(int id, String imgUrl, int productId) {
        this.id = id;
        this.imgUrl = imgUrl;
        this.productId = productId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
}

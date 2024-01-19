package com.example.ecommerce.model;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Product {
    private int id;
    private String title;
    private String description;
    private int price;
    private double discount;
    private int quantity;
    private int sold;
    private List<String> imgUrl;
    private int active;
    private Timestamp dateCreate;
    private int categoryId;

    public Product() {
    }

    public Product(int id, String title, String description, int price, double discount, int quantity, int sold, List<String> imgUrl, int active, Timestamp dateCreate, int categoryId) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.price = price;
        this.discount = discount;
        this.quantity = quantity;
        this.sold = sold;
        this.imgUrl = imgUrl;
        this.active = active;
        this.dateCreate = dateCreate;
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public List<String> getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(List<String> imgUrl) {
        this.imgUrl = imgUrl;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public Timestamp getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(Timestamp dateCreate) {
        this.dateCreate = dateCreate;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", quantity=" + quantity +
                ", sold=" + sold +
                ", imgUrl=" + imgUrl +
                ", active=" + active +
                ", dateCreate=" + dateCreate +
                ", categoryId=" + categoryId +
                '}';
    }

    public void quantityUp() {this.quantity++;
    }
    public void quantityUp(int quantity) {setQuantity(this.quantity + quantity);
    }
    public void setQuantity(int quantity){
        if (quantity < 1) {
            quantity =1;
        }
        else this.quantity = quantity;

    }

    public String getFirstImgUrl() {
        return imgUrl != null && !imgUrl.isEmpty() ? imgUrl.get(0) : null;
    }
}

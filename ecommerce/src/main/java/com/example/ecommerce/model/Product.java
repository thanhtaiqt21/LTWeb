package com.example.ecommerce.model;

import java.sql.Timestamp;

public class Product {
    private int id;
    private String name;
    private String description;
    private int price;
    private int discount;
    private int quantity;
    private int sold;
    private String image_url;
    private String status;
    private Timestamp date_create;
    private String id_category;

    public Product(int id, String name, String description, int price,
                   int discount, int quantity, int sold, String image_url,
                   String status, Timestamp date_create, String id_category) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.discount = discount;
        this.quantity = quantity;
        this.sold = sold;
        this.image_url = image_url;
        this.status = status;
        this.date_create = date_create;
        this.id_category = id_category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getDate_create() {
        return date_create;
    }

    public void setDate_create(Timestamp date_create) {
        this.date_create = date_create;
    }

    public String getId_category() {
        return id_category;
    }

    public void setId_category(String id_category) {
        this.id_category = id_category;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", quantity=" + quantity +
                ", sold=" + sold +
                ", image_url='" + image_url + '\'' +
                ", status='" + status + '\'' +
                ", date_create=" + date_create +
                ", id_category='" + id_category + '\'' +
                '}';
    }

}
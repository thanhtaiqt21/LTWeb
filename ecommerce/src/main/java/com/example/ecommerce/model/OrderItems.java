package com.example.ecommerce.model;

public class OrderItems {
    private int id;
    private int quantity;
    private int totalPrice;
    private int idProduct;
    private int idOrder;
    private Product product;

    public OrderItems() {
    }

    public OrderItems(int id, int quantity, int totalPrice, int idProduct,int idOrder, Product product) {
        this.id = id;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.idProduct = idProduct;
        this.idOrder = idOrder;
        this.product = product;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    @Override
    public String toString() {
        return "OrderItems{" +
                "id=" + id +
                ", quantity=" + quantity +
                ", totalPrice=" + totalPrice +
                ", idProduct=" + idProduct +
                ", product=" + (product != null ? product.toString() : "null") +
                '}';
    }
}

package com.example.ecommerce.model;

public class CartItem {
    private int id;
    private Product product;
    private int quantity;

    public CartItem(int id, Product product, int quantity) {
        this.id = id;
        this.product = product;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        if (quantity < 1) quantity = 1;
        this.quantity = quantity;
    }

    public void quantityUp() {
        this.quantity++;
    }
    public void quantityUp(int quantity) {
        setQuantity(this.quantity + quantity);
    }

    public int price() {
        return quantity * (product.getPrice() - (int)(product.getPrice()* product.getDiscount()));
    }
}
package com.example.ecommerce.model;

import java.sql.Timestamp;
import java.util.List;

public class Orders {
    private int id;
    private double shippingFee;
    private double totalPrice;
    private int status;
    private Timestamp dayCreate;
    private String address;
    private String phone;
    private String email;
    private int idUser;
    private String note;
    private List<OrderItems> orderItemsList;

    public Orders() {
    }

    public Orders(int id, double shippingFee, double totalPrice, int status, Timestamp dayCreate, String address, String phone, String email, int idUser, String note, List<OrderItems> orderItemsList) {
        this.id = id;
        this.shippingFee = shippingFee;
        this.totalPrice = totalPrice;
        this.status = status;
        this.dayCreate = dayCreate;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.idUser = idUser;
        this.note = note;
        this.orderItemsList = orderItemsList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(double shippingFee) {
        this.shippingFee = shippingFee;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Timestamp getDayCreate() {
        return dayCreate;
    }

    public void setDayCreate(Timestamp dayCreate) {
        this.dayCreate = dayCreate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public List<OrderItems> getOrderItemsList() {
        return orderItemsList;
    }

    public void setOrderItemsList(List<OrderItems> orderItemsList) {
        this.orderItemsList = orderItemsList;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", shippingFee=" + shippingFee +
                ", totalPrice=" + totalPrice +
                ", status='" + status + '\'' +
                ", dayCreate=" + dayCreate +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", idUser=" + idUser +
                ", note='" + note + '\'' +
                ", orderItemsList=" + orderItemsList +
                '}';
    }
}
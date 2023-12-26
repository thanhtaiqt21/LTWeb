package com.example.ecommerce.model;

public class Contact {

    private int id;
    private String email;
    private String phone;
    private String address;
    private String workingTime;

    public Contact() {}

    public Contact(int id, String email, String phone, String address, String workingTime) {
        this.id = id;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.workingTime = workingTime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWorkingTime() {
        return workingTime;
    }

    public void setWorkingTime(String workingTime) {
        this.workingTime = workingTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

package com.example.ecommerce.model;

public class Contact {

    private int id;
    private String email;
    private String phone;
    private String address;
    private String workingTime;
    private String workingTimeMF;
    private String workingTimeSA;
    private String workingTimeSU;
    private String greeting;

    public Contact() {}

    public Contact(int id, String email, String phone, String address,
                   String workingTimeMF, String workingTimeSA, String workingTimeSU, String greeting) {
        this.id = id;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.workingTimeMF = workingTimeMF;
        this.workingTimeSA = workingTimeSA;
        this.workingTimeSU = workingTimeSU;
        this.greeting = greeting;
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

    public String getWorkingTimeMF() {
        return workingTimeMF;
    }

    public void setWorkingTimeMF(String workingTimeMF) {
        this.workingTimeMF = workingTimeMF;
    }

    public String getWorkingTimeSA() {
        return workingTimeSA;
    }

    public void setWorkingTimeSA(String workingTimeSA) {
        this.workingTimeSA = workingTimeSA;
    }

    public String getWorkingTimeSU() {
        return workingTimeSU;
    }

    public void setWorkingTimeSU(String workingTimeSU) {
        this.workingTimeSU = workingTimeSU;
    }

    public String getGreeting() {
        return greeting;
    }

    public void setGreeting(String greeting) {
        this.greeting = greeting;
    }
}

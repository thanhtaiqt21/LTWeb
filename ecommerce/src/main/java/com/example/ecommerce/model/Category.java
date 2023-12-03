package com.example.ecommerce.model;

import java.sql.Timestamp;

public class Category {
    private String name;
    private String status;
    private Timestamp timestamp;

    public Category() {}
    public Category(String name, String status, Timestamp timestamp) {
        this.name = name;
        this.status = status;
        this.timestamp = timestamp;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }
}

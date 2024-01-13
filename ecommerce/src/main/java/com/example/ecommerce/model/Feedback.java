package com.example.ecommerce.model;

import java.sql.Timestamp;

public class Feedback {
    private int id;
    private String name;
    private String email;
    private String topic;
    private String message;
    private Timestamp dateCreated;

    public Feedback() {}

    public Feedback(int id, String name, String email, String topic, String message, Timestamp dateCreated) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.topic = topic;
        this.message = message;
        this.dateCreated = dateCreated;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Timestamp getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Timestamp dateCreated) {
        this.dateCreated = dateCreated;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", topic='" + topic + '\'' +
                ", message='" + message + '\'' +
                ", dateCreated=" + dateCreated +
                '}';
    }
}

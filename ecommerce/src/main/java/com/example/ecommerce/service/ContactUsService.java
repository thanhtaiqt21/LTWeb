package com.example.ecommerce.service;

import com.example.ecommerce.dao.ContactUsDao;
import com.example.ecommerce.model.Contact;
import com.example.ecommerce.model.Feedback;

public class ContactUsService {

    private static ContactUsService instance;

    private ContactUsService() {}

    public static ContactUsService getInstance() {
        if (instance == null) {
            instance = new ContactUsService();
        }
        return instance;
    }

    public Contact getContactInfo() {
        return ContactUsDao.getInstance().getContactInfo();
    }

    // Include a method for submitting feedback
    public boolean storeFeedback(Feedback feedback) {
        return ContactUsDao.getInstance().storeFeedback(feedback);
    }
}

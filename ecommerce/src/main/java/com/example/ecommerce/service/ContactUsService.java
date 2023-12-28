package com.example.ecommerce.service;

import com.example.ecommerce.dao.ContactUsDao;
import com.example.ecommerce.model.Contact;

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
}

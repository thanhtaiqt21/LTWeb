package com.example.ecommerce.service;

import com.example.ecommerce.dao.ContactDao;
import com.example.ecommerce.model.Contact;

public class ContactService {

    private static ContactService instance;

    private ContactService() {}

    public static ContactService getInstance() {
        if (instance == null) {
            instance = new ContactService();
        }
        return instance;
    }

    public Contact getContactInfo() {
        return ContactDao.getInstance().getContactInfo();
    }

    public void updateContactInfo(String newAddress, String newEmail, String newPhone,
                                  String newWorkingTimeMF, String newWorkingTimeSA, String newWorkingTimeSU,
                                  String newGreeting) {
        ContactDao.getInstance().updateContactInfo(
                newAddress, newEmail, newPhone, newWorkingTimeMF, newWorkingTimeSA, newWorkingTimeSU, newGreeting
        );
    }
}

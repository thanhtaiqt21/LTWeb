package com.example.ecommerce.service;

import com.example.ecommerce.dao.UserDao;
import com.example.ecommerce.model.User;

import java.sql.SQLException;
import java.util.List;

public class UserService {
    private static UserService instance;

    private UserService(){}

    public static UserService getInstance(){
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public User checkLogin(String username, String password){
        return UserDao.getInstance().checkLogin(username, password);
    }

    public boolean register(String username, String password, String confirmPassword, String fullname, String email, String phone, String hascode){
        if (password.equals(confirmPassword)) {
            return UserDao.getInstance().register(username,password,fullname,email,phone,hascode);
        }
        return false;
    }
    public boolean verifyEmail(String email, String hashcode) {
        return UserDao.getInstance().verifyEmail(email, hashcode);
    }

    public boolean changePassword(String username, String currentPassword, String newPassword) {
        return UserDao.getInstance().changePassword(username, currentPassword, newPassword);
    }
    public List<User> getUsersByPage(int page, int pageSize) {
        return UserDao.getInstance().getUsersByPage(page, pageSize);
    }
}

package com.example.ecommerce.service;

import com.example.ecommerce.dao.ProductDao;
import com.example.ecommerce.dao.UserDao;
import com.example.ecommerce.model.User;

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

    public boolean checkPassword(String username, String password) {
        return UserDao.getInstance().checkPassword(username, password);
    }

    public void changePassword(int userId, String newPassword) {
        UserDao.getInstance().changePassword(userId, newPassword);
    }
    public List<User> getAllUsers() {
        return UserDao.getInstance().getAllUsers();
    }
    public boolean deleteUser(int userId) {
        return UserDao.getInstance().deleteUser(userId);
    }

    public boolean updateInfor(String fullname, String email, String phone, int id, int hashcode) {
        return UserDao.getInstance().updateInfor(fullname, email, phone, id, hashcode);
    }
    public User getUserById(int userId) {
        return UserDao.getInstance().getUserById(userId);
    }

    public boolean updateUserStatusAndRole(int userId, int status, String role) {
        return UserDao.getInstance().updateUserStatusAndRole(userId, status, role);
    }

    public long total() {
        return UserDao.getInstance().totalUser();
    }
    public boolean sendPasswordResetEmail(String email) {
        return UserDao.getInstance().sendPasswordResetEmail(email);
    }
    public String generateNewPassword() {
        return UserDao.getInstance().generateNewPassword();
    }
    public boolean resetPassword(String email, String newPassword) {
        return UserDao.getInstance().resetPassword(email, newPassword);
    }

}
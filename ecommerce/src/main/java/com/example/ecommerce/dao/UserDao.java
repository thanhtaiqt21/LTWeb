package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.User;
import com.example.ecommerce.sendmail.SendMail;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private static UserDao instance;

    private UserDao() {}

    public static UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();
        }
        return instance;
    }

    public User checkLogin(String username, String password){
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement =connection.prepareStatement("SELECT * FROM user WHERE username=? AND password=? AND active = '1'");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, hashPassword(password));
            ResultSet rs = preparedStatement.executeQuery();
            User user;
            if (rs.next()) {
                user = new User();
                user.setUsername(rs.getString("username"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setRole(rs.getString("role"));
                return user;
            }
            return null;
        } catch (SQLException e) {
            return null;
        }
    }

    public boolean register(String username, String password, String fullname, String email, String phone, String hashcode){
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM user WHERE username=?");
            preparedStatement.setString(1,username);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                String usernameCheck = rs.getString("username");
                if (username.equals(usernameCheck)){
                    return false;
                }
            } else {
                preparedStatement = connection.prepareStatement("INSERT INTO user(username, password, fullname, email, phone, hashcode, role) VALUES(?,?,?,?,?,?,?)");
                preparedStatement.setString(1,username);
                preparedStatement.setString(2,hashPassword(password));
                preparedStatement.setString(3,fullname);
                preparedStatement.setString(4,email);
                preparedStatement.setString(5,phone);
                preparedStatement.setString(6,hashcode);
                preparedStatement.setString(7,"USER");
                int i = preparedStatement.executeUpdate();

                if (i > 0) {
                    SendMail se = new SendMail(email, hashcode);
                    se.sendMail();
                    return true;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public boolean verifyEmail(String email, String hashcode) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM user WHERE email=? AND hashcode=? and active='0'");
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,hashcode);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                preparedStatement = connection.prepareStatement("UPDATE user set active = '1' WHERE email=? AND hashcode=?");
                preparedStatement.setString(1,email);
                preparedStatement.setString(2,hashcode);
                int i = preparedStatement.executeUpdate();
                if (i == 1)
                    return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public boolean changePassword(String username, String currentPassword, String newPassword) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM user WHERE username=? AND password=? AND active = '1'");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, hashPassword(currentPassword));
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                preparedStatement = connection.prepareStatement("UPDATE user SET password=? WHERE username=?");
                preparedStatement.setString(1, hashPassword(newPassword));
                preparedStatement.setString(2, username);
                int i = preparedStatement.executeUpdate();

                if (i > 0) {
                    return true;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }



    public List<User> getAllUsers() {
        List<User> userList = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "SELECT * FROM user";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String fullname = resultSet.getString("fullname");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                String role = resultSet.getString("role");
                int active = resultSet.getInt("active");

                User user = new User(id, fullname, email, phone, role, active);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    public boolean deleteUser(int userId) {
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "DELETE FROM user WHERE id=?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, userId);

            int affectedRows = preparedStatement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public String hashPassword(String password) {
        MessageDigest sha256;
        try {
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1,hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}

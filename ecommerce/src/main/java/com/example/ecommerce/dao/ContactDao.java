package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Contact;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContactDao {

    private static ContactDao instance;

    private ContactDao() {}

    public static ContactDao getInstance() {
        if (instance == null) {
            instance = new ContactDao();
        }
        return instance;
    }

    public Contact getContactInfo() {
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "SELECT * FROM contact";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                String address = resultSet.getString("address");
                String workingTime = resultSet.getString("working_time");

                return new Contact(id, email, phone, address, workingTime);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public void updateContactInfo(String newAddress, String newEmail, String newPhone, String newWorkingTime) {
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "UPDATE contact SET address=?, email=?, phone=?, working_time=?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, newAddress);
            preparedStatement.setString(2, newEmail);
            preparedStatement.setString(3, newPhone);
            preparedStatement.setString(4, newWorkingTime);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

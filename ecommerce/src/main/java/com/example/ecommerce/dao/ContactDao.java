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
                String workingTimeMF = resultSet.getString("working_time_mf");
                String workingTimeSA = resultSet.getString("working_time_sa");
                String workingTimeSU = resultSet.getString("working_time_su");
                String greeting = resultSet.getString("greeting");

                return new Contact(id, email, phone, address, workingTimeMF, workingTimeSA, workingTimeSU, greeting);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updateContactInfo(String newAddress, String newEmail, String newPhone,
                                  String newWorkingTimeMF, String newWorkingTimeSA, String newWorkingTimeSU, String newGreeting) {
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "UPDATE contact SET address=?, email=?, phone=?, "
                    + "working_time_mf=?, working_time_sa=?, working_time_su=?, greeting=?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, newAddress);
            preparedStatement.setString(2, newEmail);
            preparedStatement.setString(3, newPhone);
            preparedStatement.setString(4, newWorkingTimeMF);
            preparedStatement.setString(5, newWorkingTimeSA);
            preparedStatement.setString(6, newWorkingTimeSU);
            preparedStatement.setString(7, newGreeting);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

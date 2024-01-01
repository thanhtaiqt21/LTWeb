package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Contact;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContactUsDao {

    private static ContactUsDao instance;

    private ContactUsDao() {}

    public static ContactUsDao getInstance() {
        if (instance == null) {
            instance = new ContactUsDao();
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
}

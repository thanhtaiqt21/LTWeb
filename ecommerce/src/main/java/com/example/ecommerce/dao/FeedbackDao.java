package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Feedback;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDao {

    private static final FeedbackDao instance = new FeedbackDao();

    private FeedbackDao() {
        // private constructor to enforce singleton pattern
    }

    public static FeedbackDao getInstance() {
        return instance;
    }

    public List<Feedback> getAllFeedbacks() {
        List<Feedback> feedbackList = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "SELECT * FROM feedback";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query);
                 ResultSet resultSet = preparedStatement.executeQuery()) {

                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");
                    String topic = resultSet.getString("topic");
                    String message = resultSet.getString("message");
                    Timestamp dateCreated = resultSet.getTimestamp("date_created");

                    Feedback feedback = new Feedback(id, name, email, topic, message, dateCreated);
                    feedbackList.add(feedback);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnect.getInstance().closeConnection(connection);
        }
        return feedbackList;
    }

    // Add other methods if needed, such as inserting a new feedback entry
}

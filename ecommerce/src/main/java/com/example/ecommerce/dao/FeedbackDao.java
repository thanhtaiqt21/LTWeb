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
            String query = "SELECT * FROM feedback ORDER BY date_created DESC";
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

    public boolean deleteFeedback(int feedbackId) {
        Connection connection = DBConnect.getInstance().getConnection();
        try {

            // Xóa lời nhắn người dùng từ bảng feedback
            String deleteFeedbackQuery = "DELETE FROM feedback WHERE id=?";
            try (PreparedStatement deleteFeedbackStatement = connection.prepareStatement(deleteFeedbackQuery)) {
                deleteFeedbackStatement.setInt(1, feedbackId);
                deleteFeedbackStatement.executeUpdate();
            }
            return true;
        }   catch (SQLException e) {
        e.printStackTrace();
    } finally {
        DBConnect.getInstance().closeConnection(connection);
    }

        return false;
}

    public Feedback getFeedbackById(int feedbackId) {
        Feedback feedback = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnect.getInstance().getConnection();

            String query = "SELECT * FROM feedback WHERE id=?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, feedbackId);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                feedback = new Feedback();
                feedback.setId(resultSet.getInt("id"));
                feedback.setName(resultSet.getString("name"));
                feedback.setEmail(resultSet.getString("email"));
                feedback.setMessage(resultSet.getString("message"));
                feedback.setTopic(resultSet.getString("topic"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnect.getInstance().closeConnection2(connection, preparedStatement, resultSet);
        }

        return feedback;
    }
}

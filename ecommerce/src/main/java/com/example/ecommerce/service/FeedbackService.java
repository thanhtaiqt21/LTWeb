package com.example.ecommerce.service;

import com.example.ecommerce.dao.UserDao;
import com.example.ecommerce.model.Feedback;
import com.example.ecommerce.dao.FeedbackDao;
import com.example.ecommerce.model.User;

import java.util.List;

public class FeedbackService {
    private static final FeedbackService instance = new FeedbackService();

    private FeedbackService() {
        // private constructor to enforce singleton pattern
    }

    public static FeedbackService getInstance() {
        return instance;
    }

    public List<Feedback> getAllFeedbacks() {
        return FeedbackDao.getInstance().getAllFeedbacks();
    }

    public boolean deleteFeedback(int feedbackId) {
        return FeedbackDao.getInstance().deleteFeedback(feedbackId);
    }

    public Feedback getFeedbckById(int feedbackId) {
        return FeedbackDao.getInstance().getFeedbackById(feedbackId);
    }
}

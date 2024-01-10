package com.example.ecommerce.controller.feedback;

import com.example.ecommerce.dao.UserDao;
import com.example.ecommerce.model.Feedback;
import com.example.ecommerce.service.FeedbackService;
import com.example.ecommerce.service.UserService;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FeedbackController", value = "/adminpage/feedback")
public class FeedbackController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Feedback> feedbackList = FeedbackService.getInstance().getAllFeedbacks();

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(new Gson().toJson(feedbackList));
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String feedbackIdParam = req.getParameter("feedbackId");
        if (feedbackIdParam != null && !feedbackIdParam.isEmpty()) {
            int feedbackId = Integer.parseInt(feedbackIdParam);
            boolean deleted = FeedbackService.getInstance().deleteFeedback(feedbackId);

            if (deleted) {
                resp.getWriter().write("Feedback deleted successfully");
            } else {
                resp.getWriter().write("Error deleting Feedback");
            }
        } else {
            resp.getWriter().write("Invalid Feedback ID");
        }
    }
}

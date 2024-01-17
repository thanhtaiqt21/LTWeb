package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Blog;
import com.example.ecommerce.model.Feedback;
import com.example.ecommerce.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BlogDao {
    private static BlogDao instance;

    public BlogDao() {
    }

    public static BlogDao getInstance() {
        if (instance == null) {
            instance = new BlogDao();
        }
        return instance;
    }

    public boolean addBlog(String title, String content, String imgUrl) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO blog(title, content, img_url) VALUES(?,?,?)");
            preparedStatement.setString(1, title);
            preparedStatement.setString(2, content);
            preparedStatement.setString(3, imgUrl);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
        return false;
    }


    public List<Blog> getAllBlogs() {
        List<Blog> blogList = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "SELECT * FROM blog ORDER BY times_tamp DESC";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String title = resultSet.getString("title");
                String imgUrl = resultSet.getString("img_url");
                String content = resultSet.getString("content");
                Timestamp timestamp = resultSet.getTimestamp("times_tamp");


                Blog blog = new Blog(id, title, imgUrl, content, timestamp);
                blogList.add(blog);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return blogList;
    }

    public boolean deleteBlog(int blogId) {
        Connection connection = DBConnect.getInstance().getConnection();
        try {

            // Xóa lời nhắn người dùng từ bảng feedback
            String deleteBlogQuery = "DELETE FROM blog WHERE id=?";
            try (PreparedStatement deleteBlogStatement = connection.prepareStatement(deleteBlogQuery)) {
                deleteBlogStatement.setInt(1, blogId);
                deleteBlogStatement.executeUpdate();
            }
            return true;
        }   catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnect.getInstance().closeConnection(connection);
        }

        return false;
    }

    public Blog getBlogById(int blogId) {
        Blog blog = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnect.getInstance().getConnection();

            String query = "SELECT * FROM blog WHERE id=?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, blogId);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                blog = new Blog();
                blog.setTitle(resultSet.getString("title"));
                blog.setimgUrl(resultSet.getString("img_url"));
                blog.setContent(resultSet.getString("content"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnect.getInstance().closeConnection2(connection, preparedStatement, resultSet);
        }

        return blog;
    }

    public boolean updateBlog(int id, String title, String content, String imgUrl) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("UPDATE blog SET title = ?, content = ?, img_url = ? WHERE id = ?");
            preparedStatement.setString(1, title);
            preparedStatement.setString(2, content);
            preparedStatement.setString(3, imgUrl);
            preparedStatement.setInt(4, id);

            int i = preparedStatement.executeUpdate();
            return i > 0;
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }




}

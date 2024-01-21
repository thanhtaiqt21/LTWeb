package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Blog;
import com.example.ecommerce.model.Img;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.ImgService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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

    public List<Blog> getNewBlog() {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        List<Blog> newBlogs = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM blog ORDER BY date_create LIMIT 5");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                newBlogs.add(new Blog(rs.getInt("id"),rs.getString("title"),
                        rs.getString("img_url"),rs.getString("content"),
                        rs.getTimestamp("date_create")));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return newBlogs;
    }

    public List<Blog> getAllBlogs() {
        List<Blog> blogList = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "SELECT * FROM blog ORDER BY date_create DESC";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String title = resultSet.getString("title");
                String imgUrl = resultSet.getString("img_url");
                String content = resultSet.getString("content");
                Timestamp timestamp = resultSet.getTimestamp("date_create");


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

    public List<Blog> getBlogPagination(int start, int total) {
        List<Blog> blogs = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM blog LIMIT ?, ? ");
            preparedStatement.setInt(1, start);
            preparedStatement.setInt(2, total);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));
                blog.setTitle(rs.getString("title"));
                blog.setContent(rs.getString("content"));
                blog.setimgUrl(rs.getString("img_url"));
                blog.setTimestamp(rs.getTimestamp("date_create"));

                blogs.add(blog);
            }
        }catch (SQLException e) {
            throw new RuntimeException();
        }
        return blogs;
    }

    public long totalBlog() {
        long count = 0;
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) AS total FROM blog");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return count;
    }
    public List<Blog> getRelatedBlog() {
        List<Blog> blogList = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "SELECT * FROM blog ORDER BY RAND() LIMIT 2";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String title = resultSet.getString("title");
                String imgUrl = resultSet.getString("img_url");
                String content = resultSet.getString("content");
                Timestamp timestamp = resultSet.getTimestamp("date_create");


                Blog blog = new Blog(id, title, imgUrl, content, timestamp);
                blogList.add(blog);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return blogList;
    }


    public static void main(String[] args) {
        BlogDao dao = new BlogDao();
        List<Blog> list = BlogDao.getInstance().getBlogPagination(1,3);
        for (Blog b : list){
            System.out.println(b);
        }
    }


}

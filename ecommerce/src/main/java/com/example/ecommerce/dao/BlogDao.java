package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Blog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BlogDao {
    private static BlogDao instance;
    public BlogDao(){}

    public static BlogDao getInstance(){
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
                preparedStatement.setString(1,title);
                preparedStatement.setString(2,content);
                preparedStatement.setString(3,imgUrl);
                int i = preparedStatement.executeUpdate();
                if (i > 0 ) return true;
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
}

package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}

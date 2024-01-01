package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ImgDao {
    private static ImgDao instance;
    private ImgDao(){}

    public static ImgDao getInstance(){
        if (instance == null) {
            instance = new ImgDao();
        }
        return instance;
    }

    public boolean addImg(String imgUrl, int productId) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO img(img_url,id_product) VALUES (?,?)");
            preparedStatement.setString(1, imgUrl);
            preparedStatement.setInt(2, productId);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}

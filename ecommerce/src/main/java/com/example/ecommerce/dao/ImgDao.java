package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Img;
import com.example.ecommerce.model.Product;

import java.security.PublicKey;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

    public List<Img> getImgUrlByProductId(int productId) {
        List<Img> imgs = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM img WHERE id_product=?");
            preparedStatement.setInt(1, productId);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Img img = new Img();
                img.setId(rs.getInt("id"));
                img.setImgUrl(rs.getString("img_url"));
                img.setProductId(rs.getInt("id_product"));
                imgs.add(img);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return imgs;
    }

    public boolean deleteImgById(int id) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM img WHERE id=?");
            preparedStatement.setInt(1, id);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}

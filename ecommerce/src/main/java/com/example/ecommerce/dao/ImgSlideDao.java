package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Img;
import com.example.ecommerce.model.ImgSlide;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ImgSlideDao {
    private static ImgSlideDao instance;
    private ImgSlideDao(){}

    public static ImgSlideDao getInstance(){
        if (instance == null) {
            instance = new ImgSlideDao();
        }
        return instance;
    }

    public boolean addImgSlide(String imgUrl) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO img_slide(img_url) VALUES (?)");
            preparedStatement.setString(1, imgUrl);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public List<ImgSlide> getImgSlides() {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        List<ImgSlide> imgSlides = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM img_slide");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                imgSlides.add(new ImgSlide(rs.getInt("id"), rs.getString("img_url")));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return imgSlides;
    }

    public boolean deleteImgSlide(int id) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM img_slide WHERE id=?");
            preparedStatement.setInt(1,id);
            int i = preparedStatement.executeUpdate();
            if (i >0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}

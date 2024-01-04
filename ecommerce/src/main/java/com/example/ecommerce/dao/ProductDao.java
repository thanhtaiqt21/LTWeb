package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Img;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.ImgService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private static ProductDao instance;
    private ProductDao(){}

    public static ProductDao getInstance(){
        if (instance == null) {
            instance = new ProductDao();
        }
        return instance;
    }

    public int addProduct(String title, String description, int price, double discount, int quantity, int categoryId) throws SQLException {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE title=?");
            preparedStatement.setString(1,title);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return 0;
            } else {
                preparedStatement = connection.prepareStatement("INSERT INTO product(title,description,price,discount,quantity,id_category) VALUES(?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setString(1,title);
                preparedStatement.setString(2,description);
                preparedStatement.setInt(3,price);
                preparedStatement.setDouble(4,discount);
                preparedStatement.setInt(5,quantity);
                preparedStatement.setInt(6,categoryId);
                int i = preparedStatement.executeUpdate();
                ResultSet rs1 = preparedStatement.getGeneratedKeys();
                if (rs1.next()) {
                    System.out.println(rs1.getInt(1));
                    return rs1.getInt(1);
                }
            }
        } catch (SQLException exception) {
            throw new RuntimeException();
        }
        return 0;
    }

    public List<Product> getProducts(int start, int total) {
        List<Product> products = new ArrayList<>();
        List<String> imgUrls = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product LIMIT ?, ? ");
            preparedStatement.setInt(1, start);
            preparedStatement.setInt(2, total);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
              Product product = new Product();
              product.setId(rs.getInt("id"));
              product.setTitle(rs.getString("title"));
              product.setDescription(rs.getString("description"));
              product.setPrice(rs.getInt("price"));
              product.setDiscount(rs.getDouble("discount"));
              product.setQuantity(rs.getInt("quantity"));
              product.setSold(rs.getInt("sold"));
              product.setActive(rs.getInt("active"));
              product.setDateCreate(rs.getTimestamp("date_create"));
              product.setCategoryId(rs.getInt("id_category"));
              List<Img> imgs = ImgService.getInstance().getImgUrlByProductId(rs.getInt("id"));
              for (Img img : imgs) {
                  imgUrls.add(img.getImgUrl());
              }
              product.setImgUrl(imgUrls);
              products.add(product);
            }
        }catch (SQLException e) {
            throw new RuntimeException();
        }
        return products;
    }

    public long totalProduct() {
        long count = 0;
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) AS total FROM product");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return count;
    }
}

package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Category;
import com.example.ecommerce.model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.sql.*;

public class ProductDao {
    private static ProductDao instance;
    public ProductDao(){}

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

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `products`";
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getInt("price"));
                product.setDiscount(rs.getDouble("discount"));
                product.setQuantity(rs.getInt("quantity"));
                product.setSold(rs.getInt("sold"));

                String imgUrlString = rs.getString("imgUrl");
                if (imgUrlString != null && !imgUrlString.isEmpty()) {
                    List<String> imgUrlList = Arrays.asList(imgUrlString.split(","));
                    product.setImgUrl(imgUrlList);
                } else {
                    product.setImgUrl(new ArrayList<>());
                }

                product.setActive(rs.getInt("active"));
                product.setDateCreate(rs.getTimestamp("dateCreate"));
                product.setCategoryId(rs.getInt("categoryId"));
                list.add(product);
            }
        } catch (Exception e) {
            // Xử lý exception
        }
        return list;
    }

    public List<Category> getAllCategory(){
        List<Category> listC = new ArrayList<>();
        String query = "SELECT * FROM `category`";
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                category.setStatus(rs.getInt("status"));
                category.setTimestamp(rs.getTimestamp("timestamp"));
                listC.add(category);
            }
        }catch (Exception e){

        }

        return listC;
    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        List<Product> list = dao.getAllProduct();

        CategoryDao cDao = new CategoryDao();
        List<Category> listC = cDao.getAllCategory();
        for (Category o : listC){
            System.out.println(o);
        }
    }

    public List<Product> getProductByCID(String id){
//        Connection connection = DBConnect.getInstance().getConnection();
//        PreparedStatement preparedStatement;
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `products` WHERE categoryId = ? AND active = 1";
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getInt("price"));
                product.setDiscount(rs.getDouble("discount"));
                product.setQuantity(rs.getInt("quantity"));
                product.setSold(rs.getInt("sold"));

                String imgUrlString = rs.getString("imgUrl");
                if (imgUrlString != null && !imgUrlString.isEmpty()) {
                    List<String> imgUrlList = Arrays.asList(imgUrlString.split(","));
                    product.setImgUrl(imgUrlList);
                } else {
                    product.setImgUrl(new ArrayList<>());
                }

                product.setActive(rs.getInt("active"));
                product.setDateCreate(rs.getTimestamp("dateCreate"));
                product.setCategoryId(rs.getInt("categoryId"));
                list.add(product);

            }
        }catch (Exception e){

        }

        return list;
    }
}

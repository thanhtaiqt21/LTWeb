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
                product.setActive(rs.getInt("active"));
                product.setDateCreate(rs.getTimestamp("dateCreate"));
                product.setCategoryId(rs.getInt("categoryId"));

                // Truy vấn các ảnh tương ứng với sản phẩm từ bảng "images"
                List<String> imgUrlList = new ArrayList<>();
                int productId = rs.getInt("id");
                String imgQuery = "SELECT imgUrl FROM `images` WHERE productId = ?";
                PreparedStatement imgPs = connection.prepareStatement(imgQuery);
                imgPs.setInt(1, productId);
                ResultSet imgRs = imgPs.executeQuery();
                while (imgRs.next()) {
                    String imgUrl = imgRs.getString("imgUrl");
                    imgUrlList.add(imgUrl);
                }
                product.setImgUrl(imgUrlList);

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



    public List<Product> getProductByCID(String id){
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
                product.setActive(rs.getInt("active"));
                product.setDateCreate(rs.getTimestamp("dateCreate"));
                product.setCategoryId(rs.getInt("categoryId"));

                // Truy vấn các ảnh tương ứng với sản phẩm từ bảng "images"
                List<String> imgUrlList = new ArrayList<>();
                int productId = rs.getInt("id");
                String imgQuery = "SELECT imgUrl FROM `images` WHERE productId = ?";
                PreparedStatement imgPs = connection.prepareStatement(imgQuery);
                imgPs.setInt(1, productId);
                ResultSet imgRs = imgPs.executeQuery();
                while (imgRs.next()) {
                    String imgUrl = imgRs.getString("imgUrl");
                    imgUrlList.add(imgUrl);
                }
                product.setImgUrl(imgUrlList);

                list.add(product);

            }
        }catch (Exception e){

        }

        return list;
    }

    public Product getProductByID(String id) {
        String query = "SELECT * FROM `products` WHERE id = ?";
        Product product = null;
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product = new Product();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getInt("price"));
                product.setDiscount(rs.getDouble("discount"));
                product.setQuantity(rs.getInt("quantity"));
                product.setSold(rs.getInt("sold"));
                product.setActive(rs.getInt("active"));
                product.setDateCreate(rs.getTimestamp("dateCreate"));
                product.setCategoryId(rs.getInt("categoryId"));

                List<String> imgUrlList = new ArrayList<>();
                int productId = rs.getInt("id");
                String imgQuery = "SELECT imgUrl FROM `images` WHERE productId = ?";
                PreparedStatement imgPs = connection.prepareStatement(imgQuery);
                imgPs.setInt(1, productId);
                ResultSet imgRs = imgPs.executeQuery();
                while (imgRs.next()) {
                    String imgUrl = imgRs.getString("imgUrl");
                    imgUrlList.add(imgUrl);
                }
                product.setImgUrl(imgUrlList);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return product;
    }

    public List<Product> getRelatedProducts(String categoryId) {
        String query = "SELECT * FROM `products` WHERE categoryId = ? ORDER BY RAND()";
        List<Product> productList = new ArrayList<>();
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, categoryId);
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
                product.setActive(rs.getInt("active"));
                product.setDateCreate(rs.getTimestamp("dateCreate"));
                product.setCategoryId(rs.getInt("categoryId"));

                List<String> imgUrlList = new ArrayList<>();
                int productId = rs.getInt("id");
                String imgQuery = "SELECT imgUrl FROM `images` WHERE productId = ?";
                PreparedStatement imgPs = connection.prepareStatement(imgQuery);
                imgPs.setInt(1, productId);
                ResultSet imgRs = imgPs.executeQuery();
                while (imgRs.next()) {
                    String imgUrl = imgRs.getString("imgUrl");
                    imgUrlList.add(imgUrl);
                }
                product.setImgUrl(imgUrlList);

                productList.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return productList;
    }



    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        Product p = dao.getProductByID("1");
        //System.out.println(p);

        List<Product> list = dao.getRelatedProducts("2");
        for (Product o : list){
            System.out.println(o);
        }
    }


}

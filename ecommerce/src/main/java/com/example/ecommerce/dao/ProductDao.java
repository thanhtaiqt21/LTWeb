package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Category;
import com.example.ecommerce.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private static ProductDao instance;
    public ProductDao(){};

    public static ProductDao getInstance() {
        if (instance == null) {
            instance = new ProductDao();
        }
        return instance;
    }

//    Connection conn = null;
//    PreparedStatement ps = null;
//    ResultSet rs = null;

    public List<Product> getAllProduct(){
//        Connection connection = DBConnect.getInstance().getConnection();
//        PreparedStatement preparedStatement;
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `products`";
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getTimestamp(10),
                        rs.getString(11)
                ));
            }
        }catch (Exception e){

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
                listC.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getTimestamp(4)
                ));
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
        String query = "SELECT * FROM `products` WHERE id_category = ?";
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getTimestamp(10),
                        rs.getString(11)
                ));
            }
        }catch (Exception e){

        }

        return list;
    }

}

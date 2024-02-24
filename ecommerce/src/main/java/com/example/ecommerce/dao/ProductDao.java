
package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.Category;
import com.example.ecommerce.model.Img;
import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.ImgService;

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
    public List<Product> getProducts(int start, int total) {
        List<Product> products = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product ORDER BY date_create LIMIT ?, ? ");
            preparedStatement.setInt(1, start);
            preparedStatement.setInt(2, total);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                List<String> imgUrls = new ArrayList<>();
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

    public List<Product> getProductsPagination(int id_category, int start, int total) {
        List<Product> products = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE id_category = ? AND active = 1 LIMIT ?, ?");
            preparedStatement.setInt(1, id_category); // Thay id_category vào tham số đầu tiên
            preparedStatement.setInt(2, start); // Thay start vào tham số thứ hai
            preparedStatement.setInt(3, total); // Thay total vào tham số thứ ba
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                List<String> imgUrls = new ArrayList<>();
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

    public long totalProductPagination(int cId) {
        long count = 0;
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) AS total FROM product WHERE id_category = ? AND active = 1");
            preparedStatement.setInt(1, cId);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return count;
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

    public List<Product> getTop4() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` LIMIT 4";
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

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        List<Product> list = dao.getProductsPagination(19, 2, 4);
        for (Product o : list){
            System.out.println(o);
        }
    }

    public List<Product> getProductByCID(int id){
//        Connection connection = DBConnect.getInstance().getConnection();
//        PreparedStatement preparedStatement;
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` WHERE id_category = ? AND active = 1";
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
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
                product.setDateCreate(rs.getTimestamp("date_create"));
                product.setCategoryId(rs.getInt("id_category"));

                List<String> imgUrlList = new ArrayList<>();
                int productId = rs.getInt("id");
                String imgQuery = "SELECT img_url FROM img WHERE id_product = ?";
                PreparedStatement imgPs = connection.prepareStatement(imgQuery);
                imgPs.setInt(1, productId);
                ResultSet imgRs = imgPs.executeQuery();
                while (imgRs.next()) {
                    String imgUrl = imgRs.getString("img_url");
                    imgUrlList.add(imgUrl);
                }
                product.setImgUrl(imgUrlList);

                list.add(product);

            }
        }catch (Exception e){

        }

        return list;
    }
    public List<Product> getTop4ProductByCID(int id){
//        Connection connection = DBConnect.getInstance().getConnection();
//        PreparedStatement preparedStatement;
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` WHERE id_category = ? AND active = 1 LIMIT 4";
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
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
                product.setDateCreate(rs.getTimestamp("date_create"));
                product.setCategoryId(rs.getInt("id_category"));

                List<String> imgUrlList = new ArrayList<>();
                int productId = rs.getInt("id");
                String imgQuery = "SELECT img_url FROM img WHERE id_product = ?";
                PreparedStatement imgPs = connection.prepareStatement(imgQuery);
                imgPs.setInt(1, productId);
                ResultSet imgRs = imgPs.executeQuery();
                while (imgRs.next()) {
                    String imgUrl = imgRs.getString("img_url");
                    imgUrlList.add(imgUrl);
                }
                product.setImgUrl(imgUrlList);

                list.add(product);

            }
        }catch (Exception e){

        }

        return list;
    }
    public List<Product> getRelatedProducts(int categoryId) {
        String query = "SELECT * FROM product WHERE id_category = ? ORDER BY RAND()";
        List<Product> productList = new ArrayList<>();
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, categoryId);
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
                product.setDateCreate(rs.getTimestamp("date_create"));
                product.setCategoryId(rs.getInt("id_category"));

                List<String> imgUrlList = new ArrayList<>();
                int productId = rs.getInt("id");
                String imgQuery = "SELECT img_url FROM img WHERE id_product = ?";
                PreparedStatement imgPs = connection.prepareStatement(imgQuery);
                imgPs.setInt(1, productId);
                ResultSet imgRs = imgPs.executeQuery();
                while (imgRs.next()) {
                    String imgUrl = imgRs.getString("img_url");
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
    public Product getProductByID(int id) {
        String query = "SELECT * FROM `product` WHERE id = ?";
        Product product = null;
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
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
                product.setDateCreate(rs.getTimestamp("date_create"));
                product.setCategoryId(rs.getInt("id_category"));

                List<String> imgUrlList = new ArrayList<>();
                int productId = rs.getInt("id");
                String imgQuery = "SELECT img_url FROM img WHERE id_product = ?";
                PreparedStatement imgPs = connection.prepareStatement(imgQuery);
                imgPs.setInt(1, productId);
                ResultSet imgRs = imgPs.executeQuery();
                while (imgRs.next()) {
                    String imgUrl = imgRs.getString("img_url");
                    imgUrlList.add(imgUrl);
                }
                product.setImgUrl(imgUrlList);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return product;
    }

    public boolean deleteProductById(int id) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM product WHERE id=?");
            preparedStatement.setInt(1, id);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public boolean updateProduct(int id, String title, String description, int price, double discount, int quantity, int categoryId, int active) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("UPDATE product SET title=?, description=?, price=?, discount=?, quantity=?, id_category=?, active=? WHERE id=?");
            preparedStatement.setString(1, title);
            preparedStatement.setString(2, description);
            preparedStatement.setInt(3, price);
            preparedStatement.setDouble(4, discount);
            preparedStatement.setInt(5, quantity);
            preparedStatement.setInt(6, categoryId);
            preparedStatement.setInt(7, active);
            preparedStatement.setInt(8, id);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public Product getProductById(int id) {
        List<String> imgUrls = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE id=?");
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
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
                return product;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    public List<Product> getNewProducts() {
        List<Product> products = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE active=1 ORDER BY date_create LIMIT 10");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                List<String> imgUrls = new ArrayList<>();
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
    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` WHERE title like ?";
        try {
            Connection connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<String> imgUrls = new ArrayList<>();
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
                list.add(product);
            }
        }catch (SQLException e) {
            throw new RuntimeException();
        }
        return list;
    }

    public List<Product> getBestSellingProducts() {
        List<Product> products = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE active=1 ORDER BY sold LIMIT 6");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                List<String> imgUrls = new ArrayList<>();
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

    public Product getBestSellingProduct() {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        Product product = new Product();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE active=1 ORDER BY sold LIMIT 1");
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                List<String> imgUrls = new ArrayList<>();
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
            }
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return product;
    }

    public boolean updateQuantitySold(int id, int quantity, int sold) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("UPDATE product SET quantity=?, sold=? WHERE id=?");
            preparedStatement.setInt(1,quantity);
            preparedStatement.setInt(2,sold);
            preparedStatement.setInt(3, id);
            int i = preparedStatement.executeUpdate();
            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}


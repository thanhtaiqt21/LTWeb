package com.example.ecommerce.db;

import java.sql.*;

public class DBConnect {
    private Connection conn;
    private static DBConnect instance;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
    private static final String USER = "root";
    private static final String PASS = "";

    private DBConnect() {

    }

    public static DBConnect getInstance() {
        if(instance == null) {
            instance = new DBConnect();
        }
        return instance;
    }

    public Connection getConnection(){
        try {
            if(conn == null || conn.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(DB_URL, USER, PASS);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return conn;
    }

    public void closeConnection(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();  // hoặc log lỗi
        }
    }

    public void closeConnection2(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//    public Statement get() {
//        try {
//            connect();
//            return conn.createStatement();
//        } catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
}

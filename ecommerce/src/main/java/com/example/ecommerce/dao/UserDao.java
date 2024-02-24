package com.example.ecommerce.dao;

import com.example.ecommerce.db.DBConnect;
import com.example.ecommerce.model.User;
import com.example.ecommerce.sendmail.SendMail;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class UserDao {
    private static UserDao instance;

    private UserDao() {
    }

    public static UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();
        }
        return instance;
    }

    public User checkLogin(String username, String password) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM user WHERE username=?");
            preparedStatement.setString(1, username);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                if (rs.getInt("status") == 1) {
                    return new User(); // Trả về một User với trạng thái đặc biệt
                }
                if (!hashPassword(password).equals(rs.getString("password"))) {
                    return null; // Mật khẩu không đúng
                }
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setRole(rs.getString("role"));
                user.setActive(rs.getInt("active"));
                // Thiết lập các trường khác của User nếu cần
                return user; // Trả về đối tượng User nếu đăng nhập thành công

            }
            return null; // Tài khoản không tồn tại hoặc không hoạt động
        } catch (SQLException e) {
            return null; // Lỗi kết nối cơ sở dữ liệu
        }
    }

    public boolean register(String username, String password, String fullname, String email, String phone, String hashcode) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM user WHERE username=?");
            preparedStatement.setString(1, username);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                String usernameCheck = rs.getString("username");
                if (username.equals(usernameCheck)) {
                    return false;
                }
            } else {
                preparedStatement = connection.prepareStatement("INSERT INTO user(username, password, fullname, email, phone, hashcode, role, active) VALUES(?,?,?,?,?,?,?,?)");
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, hashPassword(password));
                preparedStatement.setString(3, fullname);
                preparedStatement.setString(4, email);
                preparedStatement.setString(5, phone);
                preparedStatement.setString(6, hashcode);
                preparedStatement.setString(7, "USER");
                preparedStatement.setString(8, "0");
                int i = preparedStatement.executeUpdate();

                if (i > 0) {
                    String content ="Click here :: " + "http://localhost:8080/ecommerce/AccountActive?key1=" + email + "&key2=" + hashcode;

                    SendMail se = new SendMail();
                    se.sendMail(email, content);
                    return true;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public boolean verifyEmail(String email, String hashcode) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM user WHERE email=? AND hashcode=? and active='0'");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, hashcode);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                preparedStatement = connection.prepareStatement("UPDATE user set active = '1' WHERE email=? AND hashcode=?");
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, hashcode);
                int i = preparedStatement.executeUpdate();
                if (i == 1)
                    return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public boolean checkPassword(String username, String password) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            preparedStatement = connection.prepareStatement("SELECT password FROM user WHERE username = ?");
            preparedStatement.setString(1, username);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String storedPassword = resultSet.getString("password");

                // So sánh mật khẩu đã mã hóa. Thay thế hashPassword với phương thức mã hóa mật khẩu của bạn.
                return hashPassword(password).equals(storedPassword);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return false;
    }

    public void changePassword(int userId, String newPassword) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("UPDATE user SET password = ? WHERE id = ?");
            preparedStatement.setString(1, hashPassword(newPassword)); // Mã hóa mật khẩu mới trước khi cập nhật
            preparedStatement.setInt(2, userId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    public List<User> getAllUsers() {
        List<User> userList = new ArrayList<>();
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "SELECT * FROM user";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                String role = resultSet.getString("role");
                int active = resultSet.getInt("active");
                int status = resultSet.getInt("status");

                User user = new User(id, username, email, phone, role, active, status);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    public boolean deleteUser(int userId) {
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            connection.setAutoCommit(false);

            // Xóa các mục từ bảng orders-items thông qua các đơn hàng của người dùng
            String deleteOrderItemsQuery = "DELETE FROM order_items WHERE id_orders IN (SELECT id FROM orders WHERE id_user=?)";
            try (PreparedStatement deleteOrderItemsStatement = connection.prepareStatement(deleteOrderItemsQuery)) {
                deleteOrderItemsStatement.setInt(1, userId);
                deleteOrderItemsStatement.executeUpdate();
            }

            // Xóa các đơn hàng từ bảng orders
            String deleteOrdersQuery = "DELETE FROM orders WHERE id_user=?";
            try (PreparedStatement deleteOrdersStatement = connection.prepareStatement(deleteOrdersQuery)) {
                deleteOrdersStatement.setInt(1, userId);
                deleteOrdersStatement.executeUpdate();
            }

            // Xóa người dùng từ bảng user
            String deleteUserQuery = "DELETE FROM user WHERE id=?";
            try (PreparedStatement deleteUserStatement = connection.prepareStatement(deleteUserQuery)) {
                deleteUserStatement.setInt(1, userId);
                deleteUserStatement.executeUpdate();
            }

            // Commit giao dịch
            connection.commit();
            return true;
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException rollbackException) {
                rollbackException.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBConnect.getInstance().closeConnection(connection);
        }
        return false;
    }

    public String hashPassword(String password) {
        MessageDigest sha256;
        try {
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public boolean updateInfor(String fullname, String email, String phone, int id, int hashcode) {
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "UPDATE user SET fullname=?, email=?, phone=? WHERE id=?";
            PreparedStatement p = connection.prepareStatement(query);
            p.setString(1, fullname);
            p.setString(2, email);
            p.setString(3, phone);
            p.setInt(4, id);
            int i = p.executeUpdate();

            if (i > 0) return true;
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return false;
    }


    public User getUserById(int userId) {
        User user = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnect.getInstance().getConnection();

            String query = "SELECT * FROM user WHERE id=?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, userId);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setFullname(resultSet.getString("fullname"));
                user.setEmail(resultSet.getString("email"));
                user.setPhone(resultSet.getString("phone"));
                user.setRole(resultSet.getString("role"));
                user.setActive(resultSet.getInt("active"));
                user.setStatus(resultSet.getInt("status"));

                // Lấy danh sách địa chỉ
//                List<Address> addresses = getAddressesByUserId(userId);
//                user.setAddresses(addresses);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnect.getInstance().closeConnection2(connection, preparedStatement, resultSet);
        }

        return user;
    }

//    private List<Address> getAddressesByUserId(int userId) {
//        List<Address> addresses = new ArrayList<>();
//        Connection connection = null;
//        PreparedStatement preparedStatement = null;
//        ResultSet resultSet = null;
//
//        try {
//            connection = DBConnect.getInstance().getConnection();
//
//            String query = "SELECT * FROM address WHERE id_user=?";
//            preparedStatement = connection.prepareStatement(query);
//            preparedStatement.setInt(1, userId);
//            resultSet = preparedStatement.executeQuery();
//
//            while (resultSet.next()) {
//                int id = resultSet.getInt("id");
//                String specify = resultSet.getString("specify");
//                String ward = resultSet.getString("ward");
//                String district = resultSet.getString("district");
//                String province = resultSet.getString("province");
//
//                Address address = new Address(id, specify, ward, district, province, userId);
//                addresses.add(address);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } finally {
//            DBConnect.getInstance().closeConnection2(connection, preparedStatement, resultSet);
//        }
//
//        return addresses;
//    }

    public boolean updateUserStatusAndRole(int userId, int status, String role) {
        Connection connection = DBConnect.getInstance().getConnection();

        try {
            String query = "UPDATE user SET status=?, role=? WHERE id=?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, status);
                preparedStatement.setString(2, role);
                preparedStatement.setInt(3, userId);
                int rowsAffected = preparedStatement.executeUpdate();

                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBConnect.getInstance().closeConnection(connection);
        }

        return false;
    }

    public long totalUser() {
        long count = 0;
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT COUNT(*) AS total FROM user");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (SQLException e) {
            throw new RuntimeException();
        }
        return count;
    }

    public String generateNewPassword() {
        // Generate a new random password
        String allowedChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        int passwordLength = 8;
        Random random = new Random();
        StringBuilder newPassword = new StringBuilder();

        for (int i = 0; i < passwordLength; i++) {
            int randomIndex = random.nextInt(allowedChars.length());
            char randomChar = allowedChars.charAt(randomIndex);
            newPassword.append(randomChar);
        }

        return newPassword.toString();
    }

    public boolean resetPassword(String email, String newPassword) {
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("UPDATE user SET password = ? WHERE email = ?");
            preparedStatement.setString(1, newPassword);
            preparedStatement.setString(2, email);
            int rowsUpdated = preparedStatement.executeUpdate();
            System.out.println(rowsUpdated);
            return rowsUpdated > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean sendPasswordResetEmail(String email) {
        String newPassword = generateNewPassword();
        // Thay đổi nội dung email để sử dụng mật khẩu chưa mã hóa
        String content = "Mật khẩu mới của bạn là: " + newPassword + "\n"
                + "Vui lòng đăng nhập và thay đổi mật khẩu để giữ tính bảo mật";

        // Gửi email
        SendMail se = new SendMail();
        se.sendMail(email, content);

        return resetPassword(email, hashPassword(newPassword));
    }


}

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

public class UserDao {
    private static UserDao instance;

    private UserDao() {}

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
                if (rs.getInt("active") == 1) {
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setFullname(rs.getString("fullname"));
                    user.setEmail(rs.getString("email"));
                    user.setPhone(rs.getString("phone"));
                    user.setRole(rs.getString("role"));
                    // Thiết lập các trường khác của User nếu cần
                    return user; // Trả về đối tượng User nếu đăng nhập thành công
                }
            }
            return null; // Tài khoản không tồn tại hoặc không hoạt động
        } catch (SQLException e) {
            return null; // Lỗi kết nối cơ sở dữ liệu
        }
    }

    public boolean register(String username, String password, String fullname, String email, String phone, String hashcode){
        Connection connection = DBConnect.getInstance().getConnection();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM user WHERE username=?");
            preparedStatement.setString(1,username);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                String usernameCheck = rs.getString("username");
                if (username.equals(usernameCheck)){
                    return false;
                }
            } else {
                preparedStatement = connection.prepareStatement("INSERT INTO user(username, password, fullname, email, phone, hashcode, role, active) VALUES(?,?,?,?,?,?,?,?)");
                preparedStatement.setString(1,username);
                preparedStatement.setString(2,hashPassword(password));
                preparedStatement.setString(3,fullname);
                preparedStatement.setString(4,email);
                preparedStatement.setString(5,phone);
                preparedStatement.setString(6,hashcode);
                preparedStatement.setString(7,"USER");
                preparedStatement.setString(8,"0");
                int i = preparedStatement.executeUpdate();

                if (i > 0) {
                    SendMail se = new SendMail(email, hashcode);
                    se.sendMail();
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
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,hashcode);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                preparedStatement = connection.prepareStatement("UPDATE user set active = '1' WHERE email=? AND hashcode=?");
                preparedStatement.setString(1,email);
                preparedStatement.setString(2,hashcode);
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

                User user = new User(id, username, email, phone, role, active);
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
            // Bắt đầu một giao dịch để đảm bảo tính nhất quán khi xóa từ nhiều bảng
            connection.setAutoCommit(false);


            // Xóa thông tin liên quan từ bảng Address
            String deleteAddressQuery = "DELETE FROM address WHERE id_user=?";
            try (PreparedStatement deleteAddressStatement = connection.prepareStatement(deleteAddressQuery)) {
                deleteAddressStatement.setInt(1, userId);
                deleteAddressStatement.executeUpdate();
            }

            // Xóa thông tin người dùng từ bảng User
            String deleteUserQuery = "DELETE FROM user WHERE id=?";
            try (PreparedStatement deleteUserStatement = connection.prepareStatement(deleteUserQuery)) {
                deleteUserStatement.setInt(1, userId);
                deleteUserStatement.executeUpdate();
            }
            // Commit giao dịch nếu mọi thứ thành công
            connection.commit();
            return true;
        } catch (SQLException e) {
            // Nếu có lỗi, rollback giao dịch để tránh tình trạng không nhất quán
            try {
                connection.rollback();
            } catch (SQLException rollbackException) {
                rollbackException.printStackTrace();  // Hoặc log lỗi rollback
            }
            e.printStackTrace();  // Hoặc log lỗi xóa tài khoản
        } finally {
            // Khôi phục chế độ tự động commit
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
                e.printStackTrace();  // Hoặc log lỗi
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
            BigInteger number = new BigInteger(1,hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
    public boolean updateInfor(String fullname, String email, String phone, int id) {
        Connection connection = DBConnect.getInstance().getConnection();
        try {
            String query = "UPDATE user SET fullname=?, email=?, phone=? WHERE id=?";
            PreparedStatement p = connection.prepareStatement(query);
            p.setString(1, fullname);
            p.setString(2, email);
            p.setString(3, phone);
            p.setInt(4, id);
            int i = p.executeUpdate();
            if(i > 0) return true;
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

}

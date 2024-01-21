package com.example.ecommerce.sendmail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendMail {
    private String userEmail;
    private String hash;

//    public SendMail(String userEmail, String hash) {
//        this.userEmail = userEmail;
//        this.hash = hash;
//    }

    public void sendMail(String userEmail, String content) {
        String email = "activeemail210701@gmail.com";
        String password = "irmo mhia olit cuqc";

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session session = Session.getDefaultInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email,password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
            message.setText(content);
            Transport.send(message);
        } catch (Exception e) {
            System.out.println("Sendmail error");
        }
    }
    //            message.setText("Click here :: " + "http://localhost:8080/ecommerce/AccountActive?key1=" + userEmail + "&key2=" + hash);

//    // Thay đổi nội dung email để bao gồm tất cả dữ liệu từ form contact-us
//    public void sendContactUsMail(String contactEmail, String name, String subject, String message, String userEmail) {
//        String email = "activeemail210701@gmail.com";
//        String password = "irmo mhia olit cuqc";
//
//        Properties properties = new Properties();
//        properties.put("mail.smtp.auth", "true");
//        properties.put("mail.smtp.starttls.enable", "true");
//        properties.put("mail.smtp.host", "smtp.gmail.com");
//        properties.put("mail.smtp.port", "587");
//
//        Session session = Session.getDefaultInstance(properties, new Authenticator() {
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(email, password);
//            }
//        });
//
//        try {
//            MimeMessage mimeMessage = new MimeMessage(session);
//            mimeMessage.setFrom(new InternetAddress(email));
//            mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(contactEmail));
//            mimeMessage.setSubject("biểu mẫu góp ý từ khách hàng");
//
//            // Tạo nội dung email từ dữ liệu form contact-us
//            StringBuilder emailContent = new StringBuilder();
//            emailContent.append("Tên khách hàng: ").append(name).append("\n");
//            emailContent.append("Email: ").append(userEmail).append("\n"); // Sử dụng userEmail ở đây
//            emailContent.append("Chủ đề: ").append(subject).append("\n");
//            emailContent.append("Lời nhắn: ").append(message);
//
//            mimeMessage.setText(emailContent.toString());
//
//            Transport.send(mimeMessage);
//        } catch (MessagingException e) {
//            e.printStackTrace();
//            System.out.println("Sendmail error");
//        }
//    }
}



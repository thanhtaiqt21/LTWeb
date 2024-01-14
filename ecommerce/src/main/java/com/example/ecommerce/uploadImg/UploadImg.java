package com.example.ecommerce.uploadImg;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class UploadImg {
    public List<String> upload(HttpServletRequest request) throws ServletException, IOException {
        List<String> filePaths = new ArrayList<>();
        String uploadFilePath = request.getServletContext().getRealPath("") + File.separator + "upload";
        File fileDir = new File(uploadFilePath);
        if (!fileDir.exists()){
            fileDir.mkdirs();
        }
        for (Part part : request.getParts()) {
            if (part.getName().equals("imgs") && !getFilename(part).isEmpty()) {
                String filePath = uploadFilePath + File.separator + getFilename(part);
                filePaths.add(filePath);
                part.write(filePath);
            }
        }
        return filePaths;
    }

    public String getFilename(Part part) {
        for (String content: part.getHeader("content-disposition").split(";")) {
            System.out.println(content);
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return null;
    }
}

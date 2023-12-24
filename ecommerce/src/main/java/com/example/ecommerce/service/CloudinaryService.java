package com.example.ecommerce.service;

import com.cloudinary.utils.ObjectUtils;
import com.example.ecommerce.uploadImg.CloudinaryConfig;

import java.io.IOException;

public class CloudinaryService {
    private CloudinaryConfig cloudinaryConfig;
    private static CloudinaryService instance;
    private CloudinaryService() {}

    public static CloudinaryService getInstance() {
        if (instance == null) {
            instance = new CloudinaryService();
        }
        return instance;
    }

    public String uploadFile(String file) throws IOException {
//        File file1 = new File(file);
        return new CloudinaryConfig().cloudinary().uploader().upload(file, ObjectUtils.emptyMap()).get("url").toString();
    }
}

package com.example.ecommerce.uploadImg;

import com.cloudinary.Cloudinary;

import java.util.HashMap;
import java.util.Map;

public class CloudinaryConfig {
    public Cloudinary cloudinary() {
        Map config = new HashMap();
        config.put("cloud_name", "dxlwkyxxb");
        config.put("api_key", "279717253714246");
        config.put("api_secret", "TBUx2jOWIS2oKTO2f1QCfqPeSkU");
        return new Cloudinary(config);
    }
}

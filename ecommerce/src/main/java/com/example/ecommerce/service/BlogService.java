package com.example.ecommerce.service;

import com.example.ecommerce.dao.BlogDao;
import com.example.ecommerce.model.Blog;

import java.util.List;

public class BlogService {
    private static BlogService instance;
    private BlogService() {}

    public static BlogService getInstance() {
        if (instance == null) {
            instance = new BlogService();
        }
        return instance;
    }

    public boolean addBlog(String title, String content, String imgUrl) {
        return BlogDao.getInstance().addBlog(title, content, imgUrl);
    }
    public List<Blog> getNewBlog(){
        return BlogDao.getInstance().getNewBlog();
    }
}

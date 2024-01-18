package com.example.ecommerce.service;

import com.example.ecommerce.dao.BlogDao;
import com.example.ecommerce.model.Blog;
import com.example.ecommerce.dao.UserDao;
import com.example.ecommerce.model.Blog;
import com.example.ecommerce.model.User;

import java.util.List;

public class BlogService {
    private static BlogService instance;

    private BlogService() {
    }

    public static BlogService getInstance() {
        if (instance == null) {
            instance = new BlogService();
        }
        return instance;
    }

    public boolean addBlog(String title, String content, String imgUrl) {
        return BlogDao.getInstance().addBlog(title, content, imgUrl);
    }

    public List<Blog> getNewBlog() {
        return BlogDao.getInstance().getNewBlog();
    }
    public List<Blog> getAllBlogs() {
        return BlogDao.getInstance().getAllBlogs();
    }
    public boolean deleteBlog(int blogId) {
        return BlogDao.getInstance().deleteBlog(blogId);
    }
    public Blog getBlogById(int blogId) {
        return BlogDao.getInstance().getBlogById(blogId);
    }
    public boolean updateBlog(int id, String title, String content, String imgUrl) {
        return BlogDao.getInstance().updateBlog(id, title, content, imgUrl);
    }
}

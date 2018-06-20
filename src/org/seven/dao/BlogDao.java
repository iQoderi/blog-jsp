package org.seven.dao;

import java.util.List;

import org.seven.vo.Blog;

public interface BlogDao {

    List<Blog> findAllBlog();
    List<Blog> findTypeBlog(String type);
    Blog findBlogById(int id);
    boolean addBlog(Blog blog);
    boolean deleteBlog(int id);
    void viewBlog(Blog id);
    boolean modifyBlog(Blog blog);
    List<Blog> findBlogByName(String blogname);
    boolean modifyBlogTimes(Blog blog);
    Blog findHotBlog();
    Blog findNewBlog();
}

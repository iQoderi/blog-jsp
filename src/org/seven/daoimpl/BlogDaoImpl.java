package org.seven.daoimpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.seven.dao.BlogDao;
import org.seven.database.DBAccess;
import org.seven.util.Util;
import org.seven.vo.Blog;

public class BlogDaoImpl implements BlogDao {
    @Override
    public List<Blog> findAllBlog() {
        // TODO Auto-generated method stub
        List<Blog> list=new ArrayList<Blog>();
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from blog";
        db.query(sql);
        try {
            while(db.getRs().next()){
                Blog blog=new Blog();
                blog.setId(db.getRs().getInt(1));
                blog.setTitle(db.getRs().getString(2));
                blog.setContent(db.getRs().getString(3));
                blog.setImage(db.getRs().getString(4));
                blog.setDatetime(db.getRs().getString(5));
                blog.setTimes(db.getRs().getInt(6));
                blog.setType(db.getRs().getString(7));
                list.add(blog);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blog> findTypeBlog(String type) {
        // TODO Auto-generated method stub
        List<Blog> list=new ArrayList<Blog>();
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from blog where type='"+type+"'";
        db.query(sql);
        try {
            while(db.getRs().next()){
                Blog blog=new Blog();
                blog.setId(db.getRs().getInt(1));
                blog.setTitle(db.getRs().getString(2));
                String content=Util.String_reduce(db.getRs().getString(3));
                blog.setContent(content);
                blog.setImage(db.getRs().getString(4));
                blog.setDatetime(db.getRs().getString(5));
                blog.setTimes(db.getRs().getInt(6));
                blog.setType(db.getRs().getString(7));
                list.add(blog);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean addBlog(Blog blog) {
        // TODO Auto-generated method stub
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="insert into blog(title,content,image,datetime,times,type) " +
                "value('"+blog.getTitle()+"','"+blog.getContent()+"','" +
                blog.getImage()+"','"+blog.getDatetime()+"','"+blog.getTimes()+"','"+blog.getType()+"')";
        boolean flag=db.update(sql);
        return flag;
    }

    @Override
    public boolean deleteBlog(int id) {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public void viewBlog(Blog blog) {
        // TODO Auto-generated method stub

    }

    @Override
    public boolean modifyBlog(Blog blog) {
        // TODO Auto-generated method stub
        return false;
    }


    @Override
    public Blog findBlogById(int id) {
        // TODO Auto-generated method stub
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from blog where Id='"+id+"'";
        db.query(sql);
        try {
            if(db.getRs().next()){
                Blog blog=new Blog();
                blog.setId(db.getRs().getInt(1));
                blog.setTitle(db.getRs().getString(2));
                String content=Util.String_nbsp(db.getRs().getString(3));
                blog.setContent(content);
                blog.setImage(db.getRs().getString(4));
                blog.setDatetime(db.getRs().getString(5));
                blog.setTimes(db.getRs().getInt(6));
                blog.setType(db.getRs().getString(7));
                return blog;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Blog> findBlogByName(String blogname) {
        // TODO Auto-generated method stub
        List<Blog> list=new ArrayList<Blog>();
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from blog where title like '%"+blogname+"%'";
        db.query(sql);
        try {
            while(db.getRs().next()){
                Blog blog=new Blog();
                blog.setId(db.getRs().getInt(1));
                blog.setTitle(db.getRs().getString(2));
                blog.setContent(db.getRs().getString(3));
                blog.setImage(db.getRs().getString(4));
                blog.setDatetime(db.getRs().getString(5));
                blog.setTimes(db.getRs().getInt(6));
                blog.setType(db.getRs().getString(7));
                list.add(blog);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean modifyBlogTimes(Blog blog) {
        // TODO �Զ����ɵķ������
        DBAccess db=new DBAccess();
        db.createConn();
        int times=blog.getTimes()+1;
        String sql="update blog set times='"+times+"' where Id='"+blog.getId()+"'";
        boolean flag=db.update(sql);
        return flag;
    }

    @Override
    public Blog findHotBlog() {
        // TODO Auto-generated method stub
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from blog order by times desc";
        db.query(sql);
        try {
            if(db.getRs().next()){
                Blog blog=new Blog();
                blog.setId(db.getRs().getInt(1));
                blog.setTitle(db.getRs().getString(2));
                String content=Util.String_nbsp(db.getRs().getString(3));
                blog.setContent(content);
                blog.setImage(db.getRs().getString(4));
                blog.setDatetime(db.getRs().getString(5));
                blog.setTimes(db.getRs().getInt(6));
                blog.setType(db.getRs().getString(7));
                return blog;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Blog findNewBlog() {
        // TODO Auto-generated method stub
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from blog  order by Id desc";
        db.query(sql);
        try {
            if(db.getRs().next()){
                Blog blog=new Blog();
                blog.setId(db.getRs().getInt(1));
                blog.setTitle(db.getRs().getString(2));
                String content=Util.String_nbsp(db.getRs().getString(3));
                blog.setContent(content);
                blog.setImage(db.getRs().getString(4));
                blog.setDatetime(db.getRs().getString(5));
                blog.setTimes(db.getRs().getInt(6));
                blog.setType(db.getRs().getString(7));
                return blog;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

}
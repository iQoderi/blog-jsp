package org.seven.dao;

import org.seven.model.User;
import org.seven.utils.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import javax.transaction.Transaction;
//import org.junit.Test;

public class UserDao {

    public void saveUser(User user) {
        Connection conn = DBUtil.getConnection();
        Statement stat = null;
        ResultSet rs = null;
        String sql = "insert into user(name,password,sex,date,age) values('" + user.getName() + "','" + user.getPassword() + "','" + user.getSex() + "',now(),'" + user.getAge() + "')";
        try {
            stat = conn.createStatement();
            stat.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.release(conn, stat, rs);
        }
    }

    public void updateUser(User user) {
        Connection conn = DBUtil.getConnection();
        Statement stat = null;
        ResultSet rs = null;
        String sql = "update user set name='" + user.getName() + "',password = '" + user.getPassword() + "' where id = " + user.getId();
        try {
            stat = conn.createStatement();
            stat.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.release(conn, stat, rs);
        }
    }

    public void deleteUser(int id) {
        Connection conn = DBUtil.getConnection();
        Statement stat = null;
        ResultSet rs = null;
        String sql = "delete from user where id = " + id;
        try {
            stat = conn.createStatement();
            stat.executeUpdate(sql);
        } catch (Exception e) {
            // TODO: handle exception
        } finally {
            DBUtil.release(conn, stat, rs);
        }
    }

    public User getUser(int id) {
        Connection conn = DBUtil.getConnection();
        Statement stat = null;
        ResultSet rs = null;
        String sql = "select * from user where id = " + id;
        User user = new User();
        try {
            stat = conn.createStatement();
            rs = stat.executeQuery(sql);
            while (rs.next()) {

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setAge(rs.getString("age"));
            }
        } catch (Exception e) {
            // TODO: handle exception
        } finally {
            DBUtil.release(conn, stat, rs);
        }
        return user;
    }

    public List<User> findUsers() {
        Connection conn = DBUtil.getConnection();
        Statement stat = null;
        ResultSet rs = null;
        String sql = "select * from user order by date desc";
        List<User> list = new ArrayList<User>();
        try {
            stat = conn.createStatement();
            rs = stat.executeQuery(sql);
            while (rs.next()) {
                User user = new User();
                user.setDate(rs.getDate("date"));
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setAge(rs.getString("age"));
                user.setSex(rs.getInt("sex"));
                if (user.getSex() == 0) {
                    user.setSexy("man");
                } else {
                    user.setSexy("woman");
                }
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.release(conn, stat, rs);
        }
        return list;
    }
}

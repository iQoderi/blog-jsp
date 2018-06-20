package org.seven.daoimpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.seven.dao.UserDao;
import org.seven.database.DBAccess;
import org.seven.vo.User;

public class UserDaoImpl implements UserDao {

    @Override
    public User findUser(User user) {
        // TODO �Զ����ɵķ������
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from user where username='"+user.getUsername()+"' and password='"+user.getPassword()+"' and type='"+user.getType()+"'";
        db.query(sql);
        try {
            if(db.getRs().next()){
                User user1=new User();
                user1.setId(db.getRs().getInt(1));
                user1.setUsername(db.getRs().getString(2));
                user1.setPassword(db.getRs().getString(3));
                user1.setQuestion(db.getRs().getString(4));
                user1.setAnswer(db.getRs().getString(5));
                user1.setType(db.getRs().getString(6));
                return user1;
            }
        } catch (SQLException e) {
            // TODO �Զ����ɵ� catch ��
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<User> findAllUser() {
        // TODO Auto-generated method stub
        List<User> list=new ArrayList<User>();
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from user";
        db.query(sql);
        try {
            while(db.getRs().next()){
                User user=new User();
                user.setId(db.getRs().getInt(1));
                user.setUsername(db.getRs().getString(2));
                user.setPassword(db.getRs().getString(3));
                user.setQuestion(db.getRs().getString(4));
                user.setAnswer(db.getRs().getString(5));
                user.setType(db.getRs().getString(6));
                list.add(user);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<User> findUserByName(String username) {
        // TODO Auto-generated method stub
        List<User> list=new ArrayList<User>();
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from user where username like '%"+username+"%'";
        db.query(sql);
        try {
            while(db.getRs().next()){
                User user1=new User();
                user1.setId(db.getRs().getInt(1));
                user1.setUsername(db.getRs().getString(2));
                user1.setPassword(db.getRs().getString(3));
                user1.setQuestion(db.getRs().getString(4));
                user1.setAnswer(db.getRs().getString(5));
                user1.setType(db.getRs().getString(6));
                list.add(user1);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public User findUserById(int id) {
        // TODO �Զ����ɵķ������
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from user where Id='"+id+"'";
        db.query(sql);
        try {
            if(db.getRs().next()){
                User user1=new User();
                user1.setId(db.getRs().getInt(1));
                user1.setUsername(db.getRs().getString(2));
                user1.setPassword(db.getRs().getString(3));
                user1.setQuestion(db.getRs().getString(4));
                user1.setAnswer(db.getRs().getString(5));
                user1.setType(db.getRs().getString(6));
                return user1;
            }
        } catch (SQLException e) {
            // TODO �Զ����ɵ� catch ��
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean modifyUser(User user) {
        // TODO �Զ����ɵķ������
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="update user set password='"+user.getPassword()+"' , question='"+
                user.getQuestion()+"' , answer='"+user.getAnswer()+"' where Id='"+user.getId()+"'";
        boolean flag=db.update(sql);
        return flag;
    }

    @Override
    public boolean deleteUser(int id) {
        // TODO Auto-generated method stub
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="delete from user where id='"+id+"'";
        boolean flag=db.update(sql);
        return flag;
    }

    @Override
    public boolean addUser(User user) {
        // TODO Auto-generated method stub
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="insert into user(username,password,question,answer) " +
                "value('"+user.getUsername()+"','"+user.getPassword()+"','"+user.getQuestion()+"','"+user.getAnswer()+"')";
        boolean flag=db.update(sql);
        return flag;
    }

    @Override
    public boolean findSameName(String username) {
        // TODO Auto-generated method stub
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from user where username='"+username+"'";
        db.query(sql);
        try {
            if(db.getRs().next()){
                User user1=new User();
                user1.setId(db.getRs().getInt(1));
                user1.setUsername(db.getRs().getString(2));
                user1.setPassword(db.getRs().getString(3));
                user1.setQuestion(db.getRs().getString(4));
                user1.setAnswer(db.getRs().getString(5));
                user1.setType(db.getRs().getString(6));
                return true;
            }
        } catch (SQLException e) {
            // TODO �Զ����ɵ� catch ��
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public User findPassword(String username) {
        // TODO Auto-generated method stub
        DBAccess db=new DBAccess();
        db.createConn();
        String sql="select * from user where username='"+username+"'";
        db.query(sql);
        try {
            if(db.getRs().next()){
                User user1=new User();
                user1.setId(db.getRs().getInt(1));
                user1.setUsername(db.getRs().getString(2));
                user1.setPassword(db.getRs().getString(3));
                user1.setQuestion(db.getRs().getString(4));
                user1.setAnswer(db.getRs().getString(5));
                user1.setType(db.getRs().getString(6));
                return user1;
            }
        } catch (SQLException e) {
            // TODO �Զ����ɵ� catch ��
            e.printStackTrace();
        }
        return null;
    }


}

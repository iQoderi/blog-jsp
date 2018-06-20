package org.seven.dao;

import java.util.List;

import org.seven.vo.User;

public interface UserDao {
    User findUser(User user);
    List<User> findAllUser();
    List<User> findUserByName(String username);
    User findUserById(int id);
    boolean modifyUser(User user);
    boolean deleteUser(int id);
    boolean addUser(User user);
    boolean findSameName(String username);
    User findPassword(String username);
}

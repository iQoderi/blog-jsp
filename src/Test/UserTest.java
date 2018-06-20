package Test;

import org.seven.dao.UserDao;
import org.seven.model.User;
import org.junit.Test;
/**
 * @author catango
 * @since 2018/6/5 19:53
 */
public class UserTest {
    @Test
    public void testAdd(){
        User user =new User();
        user.setName("name--");
        user.setPassword("password-----");
//        UserDao dao = new UserDao();
//        dao.saveUser(user);
    }
}
package org.seven.web;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.seven.dao.UserDao;
import org.seven.daoimpl.UserDaoImpl;
import org.seven.util.Util;
import org.seven.vo.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        this.doPost(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String username=request.getParameter("username");
        username=Util.String_UTF(username);
        String password=request.getParameter("password");
        String type=request.getParameter("type");
        System.out.print(username+password+type);

        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setType(type);

        UserDao dao=new UserDaoImpl();
        User user1=dao.findUser(user);
        if(user1!=null){
            HttpSession session=request.getSession();
            session.setAttribute("user", user1);
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("loginfail.jsp");
        }
    }

}

package org.seven.web;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.seven.dao.UserDao;
import org.seven.daoimpl.UserDaoImpl;
import org.seven.util.Util;
import org.seven.vo.User;

/**
 * Servlet implementation class RegistServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
        String question=request.getParameter("question");
        question=Util.String_UTF(question);
        String answer=request.getParameter("answer");
        answer=Util.String_UTF(answer);

        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setQuestion(question);
        user.setAnswer(answer);

        UserDao dao=new UserDaoImpl();

        boolean flag=dao.addUser(user);
        if(flag==true){
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("loginfail.jsp");
        }
    }

}

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
 * Servlet implementation class ForgetPasswordServlet
 */
@WebServlet("/ForgetPasswordServlet")
public class ForgetPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPasswordServlet() {
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

        UserDao dao=new UserDaoImpl();
        User user1=dao.findPassword(username);
        if(user1!=null){
            //HttpSession session=request.getSession();
            request.setAttribute("userinfo", user1);
            request.getRequestDispatcher("findpassword.jsp").forward(request, response);
        }else{
            response.sendRedirect("loginfail.jsp");
        }
    }

}

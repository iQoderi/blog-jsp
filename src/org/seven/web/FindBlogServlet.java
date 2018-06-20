package org.seven.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.seven.dao.BlogDao;
//import org.seven.dao.CommentDao;
import org.seven.dao.UserDao;
import org.seven.daoimpl.BlogDaoImpl;
//import org.seven.daoimpl.CommentDaoImpl;
import org.seven.daoimpl.UserDaoImpl;
import org.seven.vo.Blog;
//import org.seven.vo.Comment;
import org.seven.vo.User;

/**
 * Servlet implementation class FindBlogServlet
 */
@WebServlet("/FindBlogServlet")
public class FindBlogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindBlogServlet() {
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
        int id=Integer.parseInt(request.getParameter("id"));

        BlogDao dao=new BlogDaoImpl();
        Blog blog=dao.findBlogById(id);
        if(blog!=null){
            //HttpSession session=request.getSession();
            dao.modifyBlogTimes(blog);//�޸Ĳ����������
            request.setAttribute("blog", blog);
//            CommentDao dao1=new CommentDaoImpl();
//            List<Comment> list=dao1.findCommentByBlogId(id);
            HttpSession session=request.getSession();
//            session.setAttribute("commentlist", list);
//            request.setAttribute("commentnumber", dao1.findCommentNumberByBlogId(id));
            request.getRequestDispatcher("blogview.jsp").forward(request, response);
        }else{
            response.sendRedirect("loginfail.jsp");
        }
    }

}

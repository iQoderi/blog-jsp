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
import org.seven.daoimpl.BlogDaoImpl;
import org.seven.util.Util;
import org.seven.vo.Blog;

/**
 * Servlet implementation class FindAllBlogServlet
 */
@WebServlet("/FindAllBlogServlet")
public class FindAllBlogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindAllBlogServlet() {
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
        BlogDao dao=new BlogDaoImpl();
        List<Blog> list=dao.findAllBlog();
        HttpSession session=request.getSession();
        session.setAttribute("list", list);
        request.getRequestDispatcher("findallblog.jsp").forward(request, response);
    }

}

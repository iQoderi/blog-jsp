package org.seven.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

import org.seven.dao.BlogDao;
import org.seven.daoimpl.BlogDaoImpl;
import org.seven.util.Util;
import org.seven.vo.Blog;

public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BlogDao dao=new BlogDaoImpl();
        List<Blog> list=dao.findAllBlog();
        HttpSession session=req.getSession();
        session.setAttribute("list", list);
        req.setAttribute("list", list);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}

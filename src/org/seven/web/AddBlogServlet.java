package org.seven.web;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.seven.dao.BlogDao;
import org.seven.daoimpl.BlogDaoImpl;
//import org.seven.oreilly.servlet.MultipartRequest;
import org.seven.vo.Blog;

/**
 * Servlet implementation class AddBlogServlet
 */
@WebServlet("/AddBlogServlet")
public class AddBlogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBlogServlet() {
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
//        String filePath =this.getServletContext().getRealPath("")+"\\upload\\";
//        MultipartRequest theMultipartRequest = new  MultipartRequest() ;
//        Enumeration theEnumeration = theMultipartRequest.getFileNames() ;

        String title,content,datetime,type,image="";
        int times;
//        if(theEnumeration.hasMoreElements()){//����һ��ͼ��
//            String fieldName = (String)theEnumeration.nextElement() ;
//            String fileName =theMultipartRequest.getFilesystemName(fieldName) ;
//            File theFile = theMultipartRequest.getFile(fieldName) ;
//            image=fileName;
//        }
//        if(image==null){
//            image="NO";
//        }
        image = "NO";
        title = request.getParameter("title");
        byte b[]=title.getBytes("ISO8859_1");
        title=new String(b,"utf-8");
        type = request.getParameter("type");
        b=type.getBytes("ISO8859_1");
        type=new String(b,"utf-8");
        content = request.getParameter("content");
        b=content.getBytes("ISO8859_1");
        content=new String(b,"utf-8");
        java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        java.util.Date currTime = new java.util.Date();
        datetime = formatter.format(currTime);
        times=0;
        Blog blog=new Blog();
        blog.setTitle(title);
        blog.setContent(content);
        blog.setImage(image);
        blog.setDatetime(datetime);
        blog.setTimes(times);
        blog.setType(type);

        BlogDao dao=new BlogDaoImpl();
        boolean flag=dao.addBlog(blog);
        if(flag){
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("loginfail.jsp");
        }
    }

}

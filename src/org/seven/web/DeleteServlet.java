package org.seven.web;

import org.seven.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteServlet extends HttpServlet {


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this.doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sid = request.getParameter("id").trim();
        int id = 0;
        if (sid != null) {
            id = Integer.parseInt(sid);
        }
        UserDao dao = new UserDao();
        dao.deleteUser(id);
        request.getRequestDispatcher("list.do").forward(request, response);

    }

}

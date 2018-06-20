package org.seven.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BackstageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("account");
        String pwd = req.getParameter("password");
        if (account.equals("admin") && pwd.equals("qwe123")) {
            req.getRequestDispatcher("backstage.jsp").forward(req, resp);
        } else {
            req.setAttribute("flag", true);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}

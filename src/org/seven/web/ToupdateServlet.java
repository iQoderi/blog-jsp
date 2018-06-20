package org.seven.web;

import org.seven.dao.UserDao;
import org.seven.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ToupdateServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		UserDao dao = new UserDao();
		String sid = request.getParameter("id").trim();
		int id = 0;
		if(sid!=null){
			id = Integer.parseInt(sid);
		}
//		User user = dao.getUser(id);
//		request.setAttribute("user", user);
//		request.getRequestDispatcher("update.jsp").forward(request, response);
	}

}

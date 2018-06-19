package org.seven.web;

import org.seven.dao.UserDao;
import org.seven.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("id").trim();
		int id = 0;
		if(sid!=null){
			id = Integer.parseInt(sid);
		}
		String name = request.getParameter("name").trim();
		String password = request.getParameter("password").trim();
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setPassword(password);
		
		UserDao dao = new UserDao();
		dao.updateUser(user);
		request.getRequestDispatcher("list.do").forward(request, response);
		
	}

}

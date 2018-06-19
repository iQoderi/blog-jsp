package org.seven.web;

import org.seven.dao.UserDao;
import org.seven.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddServlet extends HttpServlet {
	private UserDao userDao =new UserDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String age = req.getParameter("age");
		int sex = Integer.valueOf(req.getParameter("sex"));
		User user = new User();
		user.setAge(age);
		user.setName(name);
		user.setPassword(password);
		user.setSex(sex);
		userDao.saveUser(user);
		resp.sendRedirect("list.do");
	}

}

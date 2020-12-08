package com.hospital;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.UserInfoDao;
import com.hospital.model.UserInfo;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserInfo user = new UserInfo();
		user.setName(request.getParameter("name"));
		user.setEmail(request.getParameter("mail").toLowerCase());
		user.setPass(request.getParameter("pass"));
		UserInfoDao userDao = new UserInfoDao();
		UserInfo newUser = userDao.userInsert(user);
		HttpSession session = request.getSession();
		session.setAttribute("userName", request.getParameter("name"));
		System.out.println("i am inside signupServlet: "+ newUser.getUserId());
		session.setAttribute("userId", newUser.getUserId());
		session.setAttribute("userMail",request.getParameter("mail").toLowerCase());
		response.sendRedirect("index.jsp");
	}

}

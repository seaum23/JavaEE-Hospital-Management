package com.hospital;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.UserInfoDao;
import com.hospital.model.UserInfo;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserInfo user = new UserInfo();
		String email = request.getParameter("mail").toLowerCase();
		user.setEmail(email);
		user.setPass(request.getParameter("pass"));
		System.out.println("This is name = "+user.getName()+" and this is pass = "+user.getPass());
		UserInfoDao userDao = new UserInfoDao();
		UserInfo userData = userDao.checkPass(user);
		System.out.println("This is new user name if exist= "+userData.getName());
		if(userData.getName() == "InvalidUserNoAccount") {
			response.sendRedirect("LoginFormAlert.jsp");
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("userName", userData.getName());
			session.setAttribute("userId", userData.getUserId());
			session.setAttribute("userMail", request.getParameter("mail").toLowerCase());
			response.sendRedirect("index.jsp");
		}
			
	}

}

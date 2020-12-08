package com.hospital;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.PatientDao;
import com.hospital.model.Patient;

/**
 * Servlet implementation class UserView
 */
@WebServlet("/UserView")
public class UserViewServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PatientDao patDao = new PatientDao();
		HttpSession session = request.getSession();
		//int id = (Integer) session.getAttribute("userId");
		//int id = session.getAttribute("userId");
		String t = session.getAttribute("userId").toString();
		int id = Integer.parseInt(t);
		System.out.println("I am in userViewServlet: "+ t);
		ArrayList<Patient> pat = patDao.patientInfo(id);;
		request.setAttribute("patList", pat);
	}

}

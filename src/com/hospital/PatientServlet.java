package com.hospital;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.hospital.dao.PatientDao;
import com.hospital.model.Patient;

/**
 * Servlet implementation class PatientServlet
 */
@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		Patient pat = new Patient();
		pat.setpName(request.getParameter("name"));
		pat.setDocId(request.getParameter("docId"));
		pat.setDate(request.getParameter("date"));
		pat.setpPhone(request.getParameter("phone"));
		pat.setAge(request.getParameter("age"));
		HttpSession session = request.getSession();
		System.out.println((String)session.getAttribute("userId"));
		pat.setUserId((String)session.getAttribute("userId"));
		PatientDao patDao = new PatientDao();
		patDao.insertPatient(pat);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

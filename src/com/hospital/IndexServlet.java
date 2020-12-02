package com.hospital;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DepertmentDao;
import com.hospital.dao.DoctorDao;
import com.hospital.model.Depertment;
import com.hospital.model.Doctors;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/index.jsp")
public class IndexServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		DepertmentDao d = new DepertmentDao();
		Depertment[] dl = d.getData();
		DoctorDao doc = new DoctorDao();
		Doctors[] docList = doc.getData();
		System.out.println(docList[0].getName());
		
		request.setAttribute("dep", dl);
		request.setAttribute("doc", docList);
		
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
		
	}
}

package com.hospital;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DoctorDao;
import com.hospital.model.Doctors;

/**
 * Servlet implementation class AppointmentServlet
 */
@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String st = request.getParameter("depertment");
		DoctorDao  docName = new DoctorDao();
		Doctors[] docNameTime = docName.getNameFromDep(st);
		if(!st.equals("invalid")) {
			request.setAttribute("formDepName", st);
			request.setAttribute("depDocNameTime", docNameTime);
			RequestDispatcher rd = request.getRequestDispatcher("appointment.jsp");
			rd.forward(request, response);
		}else {
			response.sendRedirect("index.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}

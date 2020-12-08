package com.hospital;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DepertmentDao;
import com.hospital.dao.DoctorDao;
import com.hospital.model.Depertment;
import com.hospital.model.Doctors;

/**
 * Servlet implementation class DoctorServlet
 */
@WebServlet("/DoctorServlet")
public class DoctorServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DoctorDao doc = new DoctorDao();
		Doctors[] docList = doc.getData();
		request.setAttribute("doc", docList);
		
		DepertmentDao d = new DepertmentDao();
		Depertment[] dl = d.getData();
		request.setAttribute("dep", dl);
	}

}

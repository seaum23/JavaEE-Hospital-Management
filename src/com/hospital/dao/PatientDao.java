package com.hospital.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;

import com.hospital.model.Patient;

public class PatientDao {
	
	public static void insertPatient(Patient pat) {
		DataCon data = new DataCon();
		Connection con = data.getCon();
		try {
			
			//String q = "insert into `patient` (`patName`,`docId`,`phone`,`date`) values ('Nahian',1,'01731509208','4/12/2020');";
			String queryInsert = "insert into `patient` (`patName`,`docId`,`phone`,`date`,`age`,`userId`) values (?,?,?,?,?,?)";
			PreparedStatement st = con.prepareStatement(queryInsert);
			st.setString(1, pat.getpName());
			st.setString(2, pat.getDocId());
			st.setString(3, pat.getpPhone());
			st.setString(4, pat.getDate());
			st.setString(5, pat.getAge());
			st.setString(6, pat.getUserId());
			st.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList patientInfo(int id) {
		String query = "select patient.patName, patient.age, patient.phone, patient.date, doctors.docName, doctors.visitingTime from patient inner join doctors on doctors.docId = patient.docId where patient.userId = ?;";
		DataCon data = new DataCon();
		Connection con = data.getCon();
		ArrayList<Patient> patList = new ArrayList<Patient>();
		try {
			PreparedStatement pr = con.prepareStatement(query);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			while(rs.next()) {
				Patient pat = new Patient();
				pat.setpName(rs.getString("patient.patName"));
				pat.setAge(rs.getString("patient.age"));
				pat.setpPhone(rs.getString("patient.phone"));
				pat.setDate(rs.getString("patient.date"));
				pat.setDocName(rs.getString("doctors.docName"));
				pat.setDocVisit(rs.getString("doctors.visitingTime"));
				patList.add(pat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return patList;
	}

	public static void main(String[] args) {
		PatientDao p = new PatientDao();
		ArrayList<Patient> pat = p.patientInfo(1);
		Iterator iter = pat.iterator();
		while(iter.hasNext()) {
			Patient pTemp = (Patient)iter.next();
			System.out.println(pTemp.getpName());
		}
	}

}

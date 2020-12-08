package com.hospital.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hospital.model.Doctors;

public class DoctorDao {
	
	public Doctors[] getData() {
		DataCon data = new DataCon();
		Connection con = data.getCon();
		Doctors[] doc = null;
		try {
			Statement st = con.createStatement();
			String query = "select count(*) from depertment inner join doctors on doctors.depId = depertment.depId;";
			ResultSet rs = st.executeQuery(query);
			rs.next();
			int count = rs.getInt("count(*)");
			query = "select doctors.docName,doctors.docQl,doctors.docDes, depertment.depEmploy from doctors inner join depertment on doctors.depId = depertment.depId order by doctors.docName desc;";
			rs = st.executeQuery(query);
			doc = new Doctors[count];
			int i = 0;
			while(rs.next()) {
				doc[i] = new Doctors();
				doc[i].setName(rs.getString("docName"));
				doc[i].setDescription(rs.getString("docDes"));
				doc[i].setDesignation(rs.getString("depEmploy"));
				doc[i].setQualification(rs.getString("docQl"));
				i++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return doc;
	}
	
	public Doctors[] getNameFromDep(String dep) {
		DataCon data = new DataCon();
		Connection con = data.getCon();
		Doctors[] doc = null;
		try {
			Statement st = con.createStatement();
			String query = "select count(*) from doctors inner join depertment on doctors.depId = depertment.depId where depertment.depName = \""+dep+"\";";
			ResultSet rs = st.executeQuery(query);
			rs.next();
			int count = rs.getInt("count(*)");
			query = "select doctors.docId, doctors.docName, doctors.visitingTime from doctors inner join depertment on doctors.depId = depertment.depId where depertment.depName = \""+dep+"\" order by doctors.docName desc;";
			rs = st.executeQuery(query);
			doc = new Doctors[count];
			int i = 0;
			while(rs.next()) {
				doc[i] = new Doctors();
				doc[i].setName(rs.getString("docName"));
				doc[i].setTime(rs.getString("visitingTime"));
				doc[i].setId(rs.getString("docId"));
				i++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return doc;
	}
	public static void main(String[] args) {
		DoctorDao d = new DoctorDao();
		Doctors[] dl = d.getData();
		System.out.println(dl[0].getName());
	}

}

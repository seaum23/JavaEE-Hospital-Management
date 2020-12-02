package com.hospital.dao;

import java.sql.*;
import java.util.LinkedList;
import java.util.ListIterator;

import com.hospital.model.Depertment;

public class DepertmentDao {
	
	
	public Depertment[] getData() {			
		Depertment[] dl = null;
		Connection con = null;
		try {
			DataCon data = new DataCon();
			con = data.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select count(*) from depertment");
			rs.next();
			int column = rs.getInt("count(*)");
			rs = st.executeQuery("select * from depertment order by depName");
			dl = new Depertment[column];
			int i = 0;
			System.out.println(column);
			while(rs.next()) {
				dl[i] = new Depertment();
				dl[i].setDepName(rs.getString("depName"));
				dl[i].setDepDes(rs.getString("depDes"));
				dl[i].setDepEmploy(rs.getString("depEmploy"));
				i++;
			}
			
		}catch(Exception e){
			System.out.println(e);
		}finally {
			try {
	            con.close();
	        } catch (SQLException e) { /* ignored */}
		}
		return dl;
	}
	
	public static void main(String[] args) {
		DepertmentDao d = new DepertmentDao();
		Depertment[] dl = d.getData();
		System.out.println(dl[0].getDepName());
	}
	
}

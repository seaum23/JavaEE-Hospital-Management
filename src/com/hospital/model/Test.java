package com.hospital.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.ListIterator;

public class Test {
	public LinkedList<String> getData() {
		LinkedList<String> dl = new LinkedList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_hospital","root","123456789");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from depertment");
			while(rs.next()) {
				dl.add(rs.getString("dep-naame"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		//Class.forName("com.mysql.jdbc.Driver").newInstance();
		
		ListIterator<String> listIterator = dl.listIterator();
		while (listIterator.hasNext()) {
			System.out.println(listIterator.next());
		}
		return dl;
	}
	
	public static void main(String[] args) {
		Test t = new Test();
		t.getData();
	}

}

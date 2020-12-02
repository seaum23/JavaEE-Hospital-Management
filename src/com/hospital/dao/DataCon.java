package com.hospital.dao;
import java.sql.*;

public class DataCon {
	
	public Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_hospital","root","123456789");
			return con;
		}catch(Exception e){
			System.out.println(e);
			return null;
		}
	}

}

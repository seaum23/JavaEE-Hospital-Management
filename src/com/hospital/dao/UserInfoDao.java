package com.hospital.dao;

import java.sql.*;

import com.hospital.model.UserInfo;

public class UserInfoDao {
	
	public UserInfo userInsert(UserInfo user) {
		DataCon data = new DataCon();
		Connection con = data.getCon();
		String query = "insert into `userInfo` (`userName`,`email`,`password`) values (?,?,?)";
		UserInfo newUser = new UserInfo();
		try {
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, user.getName());
			st.setString(2, user.getEmail());
			st.setString(3, user.getPass());
			st.execute();
			String getIdQuery = "select userId from userInfo where email = ? and password = ?";
			st = con.prepareStatement(getIdQuery);
			st.setString(1, user.getEmail());
			st.setString(2, user.getPass());
			ResultSet rs = st.executeQuery();
			rs.next();
			String id = rs.getString("userId");
			System.out.println(id);
			newUser.setUserId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newUser;
	}
	public UserInfo checkPass(UserInfo user) {
		DataCon data = new DataCon();
		Connection con = data.getCon();
		String query = "SELECT userId, userName from userInfo where email='"+user.getEmail()+"' and password='"+user.getPass()+"'";
		System.out.println("this is in dao layer"+query);
		UserInfo newUser = new UserInfo();
		try {
			PreparedStatement st = con.prepareStatement(query);
			//st.setString(1, user.getEmail());
			//st.setString(2, user.getPass());
			ResultSet rs = st.executeQuery();
			if(rs.next()) { 
				System.out.println("this is user name in dao layer"+rs.getString("userName"));
				newUser.setName(rs.getString("userName"));
				newUser.setUserId(rs.getString("userId"));
			}else {
				newUser.setName("InvalidUserNoAccount");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newUser;
	}
	public static void main(String[] args) {
		UserInfo user = new UserInfo();
		String mail = "seAUm333@gmail.com";
		user.setEmail(mail.toLowerCase());
		user.setPass("12");
		UserInfoDao dao = new UserInfoDao();
		dao.checkPass(user);
	}

}

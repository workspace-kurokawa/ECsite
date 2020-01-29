package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite.util.DBConnector;

public class UserCreateConfirmDAO {
	private DBConnector db=new DBConnector();
	private Connection con = db.getConnection();

	public boolean isExistUser(String loginUserId){
		String sql="SELECT COUNT(*) AS COUNT FROM login_user_transaction WHERE login_id=?";

		boolean result=false;
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ResultSet rs=ps.executeQuery();

			if(rs.next() && rs.getInt("COUNT") > 0){
				result=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
}

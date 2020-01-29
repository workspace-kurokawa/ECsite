package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.UserDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteCompleteAction extends ActionSupport{

	private int id;
	private String message;

	public String execute() throws SQLException{
	String result=ERROR;
	UserDeleteCompleteDAO dao=new UserDeleteCompleteDAO();

	int res=dao.deleteUser(id);
	if(res>0){
		setMessage("ユーザー情報を正しく削除しました");
	}else {
		setMessage("ユーザー情報の削除に失敗しました");
	}
	result=SUCCESS;
	return result;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}

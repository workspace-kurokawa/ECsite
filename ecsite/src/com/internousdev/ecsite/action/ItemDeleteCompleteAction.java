package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.ItemDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemDeleteCompleteAction extends ActionSupport{
	private String message;
	private int id;
	public String execute() throws SQLException{
		String result=ERROR;
		ItemDeleteCompleteDAO dao=new ItemDeleteCompleteDAO();

		int res=dao.deleteItem(id);
		if(res>0){
			setMessage("商品情報を正しく削除しました");
		}else if(res ==0){
			setMessage("商品情報の削除に失敗しました");
		}
		result=SUCCESS;
		return result;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}

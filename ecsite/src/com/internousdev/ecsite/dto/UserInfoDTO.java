package com.internousdev.ecsite.dto;

public class UserInfoDTO {

	private int id;
	private String loginId;
	private String loginPassword;
	private String userName;
	private String insert_date;
	private String updated_date;

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getLoginId(){
		return loginId;
	}
	public void setLoginId(String loginId){
		this.loginId=loginId;
	}
	public String getLoginPassword(){
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword=loginPassword;
	}
	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName=userName;
	}
	public String getInsert_date(){
		return insert_date;
	}
	public void setInsert_date(String insert_date){
		this.insert_date=insert_date;
	}
	public String getUpdated_date(){
		return updated_date;
	}
	public void setUpdated_date(String updated_date){
		this.updated_date=updated_date;
	}
}

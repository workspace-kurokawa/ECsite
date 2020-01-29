package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserDetailsDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDetailsAction extends ActionSupport implements SessionAware{
	private int id;
	private Map<String,Object> session;
	private UserInfoDTO userDetailsDTO;

	public String execute() throws SQLException{
		UserDetailsDAO dao=new UserDetailsDAO();
		userDetailsDTO=dao.getUserInfoDTO(id);

		if(userDetailsDTO.getLoginId() == null){
			userDetailsDTO=null;
		}
		return SUCCESS;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public UserInfoDTO getUserDetailsDTO() {
		return userDetailsDTO;
	}
	public void setUserDetailsDTO(UserInfoDTO userDetailsDTO) {
		this.userDetailsDTO = userDetailsDTO;
	}
}

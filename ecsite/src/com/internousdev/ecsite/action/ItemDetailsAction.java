package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.ItemDetailsDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemDetailsAction extends ActionSupport {
	private String id;
	private ItemInfoDTO itemDetailsDTO;

	public String execute() throws SQLException{
		ItemDetailsDAO dao=new ItemDetailsDAO();
		itemDetailsDTO=dao.getItemInfoDTO(id);

		if(itemDetailsDTO.getItemName() == null){
			itemDetailsDTO=null;
		}
		return SUCCESS;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public ItemInfoDTO getItemDetailsDTO() {
		return itemDetailsDTO;
	}
	public void setItemDetailsDTO(ItemInfoDTO itemDetailsDTO) {
		this.itemDetailsDTO = itemDetailsDTO;
	}
}

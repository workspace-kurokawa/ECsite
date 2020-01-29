package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private int count;
	private String pay;
	private String errorMessage;

	public String execute(){

		String result=SUCCESS;

		BuyItemDAO buyItemDAO=new BuyItemDAO();
		BuyItemDTO buyItemDTO=buyItemDAO.getBuyItemInfo();

		session.put("item_stock", buyItemDTO.getItemStock());
		if(count > Integer.parseInt(session.get("item_stock").toString())){
			setErrorMessage("在庫が足りません");
			return ERROR;
		}

		session.put("count", count);
		int intCount=Integer.parseInt(session.get("count").toString());
		int intPrice=Integer.parseInt(session.get("buyItem_price").toString());
		session.put("total_price", intCount * intPrice);

		String payment;
		if(pay.equals("1")){
			payment="現金払い";
			session.put("pay", payment);
		}else{
			payment="クレジットカード";
			session.put("pay", payment);
		}
		return result;
	}

	public void setCount(int count){
		this.count=count;
	}
	public void setPay(String pay){
		this.pay=pay;
	}
	public Map<String,Object> getSession(){
		return this.session;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session=session;
	}
	public String getErrorMessage(){
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}
}

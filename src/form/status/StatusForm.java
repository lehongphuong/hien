package form.status;

import java.util.ArrayList;


import model.bean.Status;
import org.apache.struts.action.ActionForm;

public class StatusForm extends ActionForm{
	
	private int statusId;
	private int userId;
	private int subId;
	private boolean status;
	
	ArrayList<Status> statusList;
	
	
	public ArrayList<Status> getStatusList() {
		return statusList;
	}
	public void setStatusList(ArrayList<Status> statusList) {
		this.statusList = statusList;
	}
	public int getStatusId() {
		return statusId;
	}
	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getSubId() {
		return subId;
	}
	public void setSubId(int subId) {
		this.subId = subId;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	}
	
	


package form.submit;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.Menu;
import model.bean.Subject;
import model.bean.Submit;
import model.bean.User;

public class SubmitForm extends ActionForm{
	private int submitId;
	private int subId;
	private int userId;
	private String time;
	private float point;
	private ArrayList<Subject> subList;
	private ArrayList<User> usList;
	
	public int getSubmitId() {
		return submitId;
	}
	public void setSubmitId(int submitId) {
		this.submitId = submitId;
	}
	public int getSubId() {
		return subId;
	}
	public void setSubId(int subId) {
		this.subId = subId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public float getPoint() {
		return point;
	}
	public void setPoint(float point) {
		this.point = point;
	}
	public ArrayList<Submit> getSubmitList() {
		return submitList;
	}

	public void setSubmitList(ArrayList<Submit> submitList) {
		this.submitList = submitList;
	}

	

	public ArrayList<Subject> getSubList() {
		return subList;
	}
	public void setSubList(ArrayList<Subject> subList) {
		this.subList = subList;
	}



	public ArrayList<User> getUsList() {
		return usList;
	}
	public void setUsList(ArrayList<User> usList) {
		this.usList = usList;
	}



	ArrayList<Submit> submitList;

	

}

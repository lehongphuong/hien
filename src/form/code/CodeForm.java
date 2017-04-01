package form.code;

import java.util.ArrayList;

import model.bean.Code;
import model.bean.Submit;
import model.bean.User;

import org.apache.struts.action.ActionForm;

public class CodeForm extends ActionForm {

	private int codeId;
	private String submitId;
	private String code;

	ArrayList<Code> codeList;
	ArrayList<Submit> submitList;
	ArrayList<User> userList;
	public int getCodeId() {
		return codeId;
	}
	public void setCodeId(int codeId) {
		this.codeId = codeId;
	}
	public String getSubmitId() {
		return submitId;
	}
	public void setSubmitId(String submitId) {
		this.submitId = submitId;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public ArrayList<Code> getCodeList() {
		return codeList;
	}
	public void setCodeList(ArrayList<Code> codeList) {
		this.codeList = codeList;
	}
	public ArrayList<Submit> getSubmitList() {
		return submitList;
	}
	public void setSubmitList(ArrayList<Submit> submitList) {
		this.submitList = submitList;
	}
	public ArrayList<User> getUserList() {
		return userList;
	}
	public void setUserList(ArrayList<User> userList) {
		this.userList = userList;
	}

	

}

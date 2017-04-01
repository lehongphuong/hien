package form.editorial;

import java.util.ArrayList;

import model.bean.Editorial;
import model.bean.Subject;

import org.apache.struts.action.ActionForm;

public class EditorialForm extends ActionForm {
	private int editId;
	private int subId;
	private String explain;
	private String code;

	private ArrayList<Subject> subjectList;

	private ArrayList<Editorial> editorialList;

	public int getEditId() {
		return editId;
	}

	public void setEditId(int editId) {
		this.editId = editId;
	}

	public int getSubId() {
		return subId;
	}

	public void setSubId(int subId) {
		this.subId = subId;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public ArrayList<Subject> getSubjectList() {
		return subjectList;
	}

	public void setSubjectList(ArrayList<Subject> subjectList) {
		this.subjectList = subjectList;
	}

	public ArrayList<Editorial> getEditorialList() {
		return editorialList;
	}

	public void setEditorialList(ArrayList<Editorial> editorialList) {
		this.editorialList = editorialList;
	}

}

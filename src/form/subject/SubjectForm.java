package form.subject;

import java.util.ArrayList;

import model.bean.Categories;
import model.bean.Subject;

import org.apache.struts.action.ActionForm;

public class SubjectForm extends ActionForm {
	private int subId;
	private String cateId;
	private String title;
	private float successRate;
	private int maxScore;
	private String difficutly;
	ArrayList<Subject> subjectList;
	ArrayList<Categories> cateList;

	public int getSubId() {
		return subId;
	}

	public void setSubId(int subId) {
		this.subId = subId;
	}

	public String getCateId() {
		return cateId;
	}

	public void setCateId(String cateId) {
		this.cateId = cateId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public float getSuccessRate() {
		return successRate;
	}

	public void setSuccessRate(float successRate) {
		this.successRate = successRate;
	}

	public int getMaxScore() {
		return maxScore;
	}

	public void setMaxScore(int maxScore) {
		this.maxScore = maxScore;
	}

	public String getDifficutly() {
		return difficutly;
	}

	public void setDifficutly(String difficutly) {
		this.difficutly = difficutly;
	}

	public ArrayList<Subject> getSubjectList() {
		return subjectList;
	}

	public void setSubjectList(ArrayList<Subject> subjectList) {
		this.subjectList = subjectList;
	}

	public ArrayList<Categories> getCateList() {
		return cateList;
	}

	public void setCateList(ArrayList<Categories> cateList) {
		this.cateList = cateList;
	}

}

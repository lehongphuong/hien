package form.problem;

import java.util.ArrayList;

import model.bean.Problem;
import model.bean.Subject;

import org.apache.struts.action.ActionForm;

public class ProblemForm extends ActionForm{
	private int proId;
	private int subId;
	private String description;
	private String constrain;
	private String inputRequire;
	private String outputRequire;
	private String inputTestCase;
	private String outputTestCase;
	private String explain;
	private String inputUser;
	
	private ArrayList<Subject> subjectList;
	
	ArrayList<Problem> problemList;
	
	public ArrayList<Subject> getSubjectList() {
		return subjectList;
	}


	public void setSubjectList(ArrayList<Subject> subjectList) {
		this.subjectList = subjectList;
	}


	public ArrayList<Problem> getProblemList() {
		return problemList;
	}


	public void setProblemList(ArrayList<Problem> problemList) {
		this.problemList = problemList;
	}


	public int getProId() {
		return proId;
	}


	public void setProId(int proId) {
		this.proId = proId;
	}


	public int getSubId() {
		return subId;
	}


	public void setSubId(int subId) {
		this.subId = subId;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getConstrain() {
		return constrain;
	}


	public void setConstrain(String constrain) {
		this.constrain = constrain;
	}


	public String getInputRequire() {
		return inputRequire;
	}


	public void setInputRequire(String inputRequire) {
		this.inputRequire = inputRequire;
	}


	public String getOutputRequire() {
		return outputRequire;
	}


	public void setOutputRequire(String outputRequire) {
		this.outputRequire = outputRequire;
	}


	public String getInputTestCase() {
		return inputTestCase;
	}


	public void setInputTestCase(String inputTestCase) {
		this.inputTestCase = inputTestCase;
	}


	public String getOutputTestCase() {
		return outputTestCase;
	}


	public void setOutputTestCase(String outputTextCase) {
		this.outputTestCase = outputTextCase;
	}


	public String getExplain() {
		return explain;
	}


	public void setExplain(String explain) {
		this.explain = explain;
	}


	public String getInputUser() {
		return inputUser;
	}


	public void setInputUser(String inputUser) {
		this.inputUser = inputUser;
	}

	


}

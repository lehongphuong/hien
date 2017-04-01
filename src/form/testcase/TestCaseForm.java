package form.testcase;

import java.util.ArrayList;

import model.bean.Menu;
import model.bean.Subject;
import model.bean.TestCase;

import org.apache.struts.action.ActionForm;

public class TestCaseForm extends ActionForm {
	private int testId;
	private int subId;
	private String input;
	private String output;
	private float timeAsk;
	private ArrayList<Subject> subList;

	ArrayList<TestCase> testCaseList;

	public int getTestId() {
		return testId;
	}

	public void setTestId(int testId) {
		this.testId = testId;
	}

	public int getSubId() {
		return subId;
	}

	public void setSubId(int subId) {
		this.subId = subId;
	}

	public String getInput() {
		return input;
	}

	public void setInput(String input) {
		this.input = input;
	}

	public String getOutput() {
		return output;
	}

	public void setOutput(String output) {
		this.output = output;
	}

	public float getTimeAsk() {
		return timeAsk;
	}

	public void setTimeAsk(float timeAsk) {
		this.timeAsk = timeAsk;
	}

	public ArrayList<TestCase> getTestCaseList() {
		return testCaseList;
	}

	public void setTestCaseList(ArrayList<TestCase> testCaseList) {
		this.testCaseList = testCaseList;
	}

	public ArrayList<Subject> getSubList() {
		return subList;
	}

	public void setSubList(ArrayList<Subject> subList) {
		this.subList = subList;
	}

}

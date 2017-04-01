package form.tutorialcode;

import java.util.ArrayList;

import model.bean.Subject;
import model.bean.Tutorial;
import model.bean.TutorialCode;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;

public class TutorialCodeForm  extends ActionForm{
	private int tuCoId;
	private int tuId;
	private String title;
	private String description;
	private String code;
	private int positive;

	ArrayList<TutorialCode> tutorialCodeList;
	private ArrayList<Tutorial> TuList;
	
	

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	public int getTuCoId() {
		return tuCoId;
	}

	public void setTuCoId(int tuCoId) {
		this.tuCoId = tuCoId;
	}

	public int getTuId() {
		return tuId;
	}

	public void setTuId(int tuId) {
		this.tuId = tuId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getPositive() {
		return positive;
	}

	public void setPositive(int positive) {
		this.positive = positive;
	}

	public ArrayList<Tutorial> getTuList() {
		return TuList;
	}

	public void setTuList(ArrayList<Tutorial> tuList) {
		this.TuList = tuList;
	}

	public ArrayList<TutorialCode> getTutorialCodeList() {
		return tutorialCodeList;
	}

	public void setTutorialCodeList(ArrayList<TutorialCode> tutorialCodeList) {
		this.tutorialCodeList = tutorialCodeList;
	}
	

}

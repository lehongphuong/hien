package form.tutorial;

import java.util.ArrayList;

import model.bean.Categories;
import model.bean.Subject;
import model.bean.Tutorial;

import org.apache.struts.action.ActionForm;

public class TutorialForm extends ActionForm {
	private int tuId;
	private int cateId;
	private String title;
	private int positive;
	private boolean active;
	private ArrayList<Tutorial> tutorialList;
	private ArrayList<Categories> cateList;

	public int getTuId() {
		return tuId;
	}

	public void setTuId(int tuId) {
		this.tuId = tuId;
	}

	/**
	 * @return the cateId
	 */
	public int getCateId() {
		return cateId;
	}

	/**
	 * @param cateId
	 *            the cateId to set
	 */
	public void setCateId(int cateId) {
		this.cateId = cateId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPositive() {
		return positive;
	}

	public void setPositive(int positive) {
		this.positive = positive;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public ArrayList<Tutorial> getTutorialList() {
		return tutorialList;
	}

	public void setTutorialList(ArrayList<Tutorial> tutorialList) {
		this.tutorialList = tutorialList;
	}

	/**
	 * @return the cateList
	 */
	public ArrayList<Categories> getCateList() {
		return cateList;
	}

	/**
	 * @param cateList
	 *            the cateList to set
	 */
	public void setCateList(ArrayList<Categories> cateList) {
		this.cateList = cateList;
	}

}

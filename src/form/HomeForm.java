package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.Categories;
import model.bean.Editorial;
import model.bean.LeaderBoard;
import model.bean.Menu;
import model.bean.Subject;
import model.bean.Submit;
import model.bean.User;

public class HomeForm extends ActionForm {
	private String userId;
	private String username;
	private String password;
	private String rePassword;
	private String avatar;
	private String university;
	private String point;
	private String typeUser;

	private ArrayList<Menu> menuList;
	private ArrayList<Categories> cateList;
	private ArrayList<Submit> submitList;

	private String statusLogin;

	// leaderbord
	private ArrayList<LeaderBoard> leaderList;

	private ArrayList<User> userList;

	/**
	 * @return the leaderList
	 */
	public ArrayList<LeaderBoard> getLeaderList() {
		return leaderList;
	}

	/**
	 * @param leaderList
	 *            the leaderList to set
	 */
	public void setLeaderList(ArrayList<LeaderBoard> leaderList) {
		this.leaderList = leaderList;
	}

	/**
	 * @return the userList
	 */
	public ArrayList<User> getUserList() {
		return userList;
	}

	/**
	 * @param userList
	 *            the userList to set
	 */
	public void setUserList(ArrayList<User> userList) {
		this.userList = userList;
	}

	/**
	 * @return the submitList
	 */
	public ArrayList<Submit> getSubmitList() {
		return submitList;
	}

	/**
	 * @param submitList
	 *            the submitList to set
	 */
	public void setSubmitList(ArrayList<Submit> submitList) {
		this.submitList = submitList;
	}

	/**
	 * @return the rePassword
	 */
	public String getRePassword() {
		return rePassword;
	}

	/**
	 * @param rePassword
	 *            the rePassword to set
	 */
	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	public String getStatusLogin() {
		return statusLogin;
	}

	public void setStatusLogin(String statusLogin) {
		this.statusLogin = statusLogin;
	}

	public ArrayList<Menu> getMenuList() {
		return menuList;
	}

	public void setMenuList(ArrayList<Menu> menuList) {
		this.menuList = menuList;
	}

	public ArrayList<Categories> getCateList() {
		return cateList;
	}

	public void setCateList(ArrayList<Categories> cateList) {
		this.cateList = cateList;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getUniversity() {
		return university;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getTypeUser() {
		return typeUser;
	}

	public void setTypeUser(String typeUser) {
		this.typeUser = typeUser;
	}

}

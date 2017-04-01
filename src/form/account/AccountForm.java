package form.account;

import org.apache.struts.action.ActionForm;

public class AccountForm extends ActionForm {

	private String userId;
	private String username;
	private String password;
	private String avatar;
	private String university;
	private String point;
	private String typeId;

	private String statusLogin;

	/**
	 * @return the statusLogin
	 */
	public String getStatusLogin() {
		return statusLogin;
	}

	/**
	 * @param statusLogin
	 *            the statusLogin to set
	 */
	public void setStatusLogin(String statusLogin) {
		this.statusLogin = statusLogin;
	}

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 *            the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the avatar
	 */
	public String getAvatar() {
		return avatar;
	}

	/**
	 * @param avatar
	 *            the avatar to set
	 */
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	/**
	 * @return the university
	 */
	public String getUniversity() {
		return university;
	}

	/**
	 * @param university
	 *            the university to set
	 */
	public void setUniversity(String university) {
		this.university = university;
	}

	/**
	 * @return the point
	 */
	public String getPoint() {
		return point;
	}

	/**
	 * @param point
	 *            the point to set
	 */
	public void setPoint(String point) {
		this.point = point;
	}

	/**
	 * @return the typeId
	 */
	public String getTypeId() {
		return typeId;
	}

	/**
	 * @param typeId
	 *            the typeId to set
	 */
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

}

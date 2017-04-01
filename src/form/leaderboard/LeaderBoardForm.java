package form.leaderboard;

import java.util.ArrayList;

import model.bean.LeaderBoard;

import org.apache.struts.action.ActionForm;

public class LeaderBoardForm extends ActionForm {
	private int leadId;
	private int subId;
	private int userId;
	private int codeId;

	public ArrayList<LeaderBoard> getLeaderBoardList() {
		return leaderBoardList;
	}

	public void setLeaderBoardList(ArrayList<LeaderBoard> leaderBoardList) {
		this.leaderBoardList = leaderBoardList;
	}

	ArrayList<LeaderBoard> leaderBoardList;

	public int getLeadId() {
		return leadId;
	}

	public void setLeadId(int leadId) {
		this.leadId = leadId;
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

	public int getCodeId() {
		return codeId;
	}

	public void setCodeId(int codeId) {
		this.codeId = codeId;
	}

}

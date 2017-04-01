package action.leaderboard;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.LeaderBoard;
import model.bo.LeaderBoardBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.leaderboard.LeaderBoardForm;

public class LeaderboardListAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		LeaderBoardForm leaderBoardForm = (LeaderBoardForm) form;

		LeaderBoardBO leaderBoardBO = new LeaderBoardBO();

		ArrayList<LeaderBoard> leaderboardList = leaderBoardBO
				.getAllLeaderbBoard();

		leaderBoardForm.setLeaderBoardList(leaderboardList);

		return mapping.findForward("thanhCong");
	}
}

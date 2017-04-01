package action.tutorialcode;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.TutorialCodeBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.tutorialcode.TutorialCodeForm;

public class TutorialCodeDeleteAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TutorialCodeForm tutorialCodeForm=(TutorialCodeForm) form;
		
		String tuCoId=request.getParameter("tuCoId");

		TutorialCodeBO tutorialCodeBO=new TutorialCodeBO();
		
		tutorialCodeBO.deleteTutorialCode(Integer.parseInt(tuCoId));
		
		return mapping.findForward("thanhCong");
		
	}

}

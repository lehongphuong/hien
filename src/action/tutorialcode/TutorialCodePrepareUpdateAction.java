package action.tutorialcode;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TutorialCode;

import model.bo.TutorialBO;
import model.bo.TutorialCodeBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.tutorialcode.TutorialCodeForm;

public class TutorialCodePrepareUpdateAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TutorialCodeForm tutorialCodeForm = (TutorialCodeForm) form;
		
		String tuCoId=request.getParameter("tuCoId");

		TutorialCodeBO tutorialCodeBO=new TutorialCodeBO();
		TutorialBO tutorialBO=new TutorialBO();
		
		TutorialCode tutorialCode=tutorialCodeBO.getOneTutorialCodeById(tuCoId);
		
		tutorialCodeForm.setTuCoId(tutorialCode.getTuCoId());
		tutorialCodeForm.setTuId(tutorialCode.getTuId());
		tutorialCodeForm.setTitle(tutorialCode.getTitle());
		tutorialCodeForm.setDescription(tutorialCode.getDescription());
		tutorialCodeForm.setCode(tutorialCode.getCode());
		tutorialCodeForm.setPositive(tutorialCode.getPositive());
		
		//set du lieu  cho form
		tutorialCodeForm.setTuList(tutorialBO.getAllTutorial());

		return mapping.findForward("thanhCong");
	}

}

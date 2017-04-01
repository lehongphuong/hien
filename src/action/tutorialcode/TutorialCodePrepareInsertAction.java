package action.tutorialcode;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Tutorial;
import model.bo.TutorialBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.testcase.TestCaseForm;
import form.tutorialcode.TutorialCodeForm;

public class TutorialCodePrepareInsertAction  extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		TutorialCodeForm tutorialCodeForm=(TutorialCodeForm) form;
		TutorialBO tutorialBO=new TutorialBO();
		tutorialCodeForm.setTuList(tutorialBO.getAllTutorial());
		return mapping.findForward("thanhCong");
	}

}

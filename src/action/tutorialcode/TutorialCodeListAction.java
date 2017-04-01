package action.tutorialcode;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TestCase;
import model.bean.TutorialCode;
import model.bo.TestCaseBO;
import model.bo.TutorialCodeBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.testcase.TestCaseForm;
import form.tutorialcode.TutorialCodeForm;

public class TutorialCodeListAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TutorialCodeForm tutorialCodeForm=(TutorialCodeForm)form;
		
		TutorialCodeBO tutorialCodeBO=new TutorialCodeBO();
		
		ArrayList<TutorialCode> tutorialCodeList=tutorialCodeBO.getAllTutorialCode();
		
		
		tutorialCodeForm.setTutorialCodeList(tutorialCodeList);
		
		return mapping.findForward("thanhCong");
	}
}

package action.tutorialcode;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TutorialCode;
import model.bo.TutorialCodeBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.tutorialcode.TutorialCodeForm;

public class TutorialCodeInsertAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TutorialCodeForm tutorialCodeForm =(TutorialCodeForm) form;

		TutorialCodeBO tutorialCodeBO = new TutorialCodeBO();
		
		TutorialCode tuCode=new TutorialCode();
		tuCode.setTuCoId(tutorialCodeForm.getTuCoId());
		tuCode.setTuId(tutorialCodeForm.getTuId());
		tuCode.setTitle(tutorialCodeForm.getTitle());
		tuCode.setDescription(tutorialCodeForm.getDescription());
		tuCode.setCode(tutorialCodeForm.getCode());
		tuCode.setPositive(tutorialCodeForm.getPositive());
		System.out.println("toi them");
		tutorialCodeBO.insertTutorialCode(tuCode);
		

		return mapping.findForward("thanhCong");
	}

}

package action.tutorial;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Tutorial;
import model.bo.TutorialBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.tutorial.TutorialForm;

public class TutInsertAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		TutorialForm tutorialForm = (TutorialForm)form;
		
		TutorialBO tutorialBO = new TutorialBO();
		
		Tutorial tutorial = new Tutorial();
		
		tutorial.setTitle(tutorialForm.getTitle());
		tutorial.setPositive(tutorialForm.getPositive());
		tutorial.setActive(tutorialForm.isActive());
		tutorial.setCateId(tutorialForm.getCateId());
		
		tutorialBO.insertTutorial(tutorial);
		
		return mapping.findForward("thanhCong");
	}
	
}

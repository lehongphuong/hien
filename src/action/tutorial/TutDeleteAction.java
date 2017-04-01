package action.tutorial;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.TutorialBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.tutorial.TutorialForm;

public class TutDeleteAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		TutorialForm tutorialForm = (TutorialForm)form;
		
		String tuId = request.getParameter("tuId");
		
		TutorialBO tutorialBO = new TutorialBO();
		
		tutorialBO.deleteTutorial(Integer.parseInt(tuId));
		
		return mapping.findForward("thanhCong");
	}

}

package action.tutorial;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.CategoriesBO;
import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.tutorial.TutorialForm;

public class TutPrepareInsertAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		TutorialForm tutorialForm = (TutorialForm)form;
		
		CategoriesBO categoriesBO=new CategoriesBO();
		
		tutorialForm.setCateList(categoriesBO.getAllCategories());
		
		return mapping.findForward("thanhCong");
	}

}

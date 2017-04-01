package action.tutorial;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Tutorial;
import model.bo.CategoriesBO;
import model.bo.SubjectBO;
import model.bo.TutorialBO;
import model.dao.TutorialDAO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.tutorial.TutorialForm;

public class TutPrepareUpdateAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		TutorialForm tutorialForm = (TutorialForm) form;

		String tuId = request.getParameter("tuId");

		TutorialBO tutorialBO = new TutorialBO();

		Tutorial tutorial = tutorialBO.getOneTutorialById(tuId);

		tutorialForm.setTuId(tutorial.getTuId());
		tutorialForm.setTitle(tutorial.getTitle());
		tutorialForm.setActive(tutorial.isActive());
		tutorialForm.setCateId(tutorial.getCateId());

		CategoriesBO categoriesBO = new CategoriesBO();

		tutorialForm.setCateList(categoriesBO.getAllCategories());

		return mapping.findForward("thanhCong");
	}

}

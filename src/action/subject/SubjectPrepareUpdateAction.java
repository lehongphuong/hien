package action.subject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Subject;
import model.bo.CategoriesBO;
import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.subject.SubjectForm;

public class SubjectPrepareUpdateAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SubjectForm subjectForm = (SubjectForm) form;
		
		String subId=request.getParameter("subId");

		SubjectBO subjectBO=new SubjectBO();
		
		Subject subject=subjectBO.getOneSubjectBySubId(subId);
		
		subjectForm.setSubId(subject.getSubId());
		subjectForm.setCateId(subject.getCateId()+"");
		subjectForm.setTitle(subject.getTitle());
		subjectForm.setSuccessRate(subject.getSuccessRate());
		subjectForm.setMaxScore(subject.getMaxScore());
		subjectForm.setDifficutly(subject.getDifficutly());
		
		CategoriesBO categoriesBO=new CategoriesBO();
		subjectForm.setCateList(categoriesBO.getAllCategories());
		

		return mapping.findForward("thanhCong");
	}

}

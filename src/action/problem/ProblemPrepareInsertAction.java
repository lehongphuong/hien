package action.problem;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.problem.ProblemForm;

public class ProblemPrepareInsertAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProblemForm problemForm= (ProblemForm)form;
		
		SubjectBO subjectBO=new SubjectBO();
	 
		problemForm.setSubjectList(subjectBO.getAllSubject());
		
		return mapping.findForward("thanhCong");
}
}
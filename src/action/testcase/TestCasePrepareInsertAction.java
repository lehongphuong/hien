package action.testcase;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.testcase.TestCaseForm;

public class TestCasePrepareInsertAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		TestCaseForm testCaseForm=(TestCaseForm) form;
		SubjectBO subjectBO=new SubjectBO();
		testCaseForm.setSubList(subjectBO.getAllSubject());
		return mapping.findForward("thanhCong");
	}

}

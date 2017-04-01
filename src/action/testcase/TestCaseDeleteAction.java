package action.testcase;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.TestCaseBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.testcase.TestCaseForm;

public class TestCaseDeleteAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TestCaseForm testCaseForm=(TestCaseForm) form;
		
		String testId=request.getParameter("testId");

		TestCaseBO testCaseBO=new TestCaseBO();
		
		testCaseBO.deleteTestCase(Integer.parseInt(testId));
		
		return mapping.findForward("thanhCong");
	}


}

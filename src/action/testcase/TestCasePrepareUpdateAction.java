package action.testcase;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TestCase;
import model.bo.SubjectBO;
import model.bo.TestCaseBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.testcase.TestCaseForm;

public class TestCasePrepareUpdateAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TestCaseForm testCaseForm = (TestCaseForm) form;
		
		String testId=request.getParameter("testId");

		TestCaseBO testCaseBO=new TestCaseBO();
		SubjectBO subjectBO=new SubjectBO();
		
		TestCase testCase=testCaseBO.getOneTestCaseById(testId);
		
		testCaseForm.setTestId(testCase.getTestId());
		testCaseForm.setSubId(testCase.getSubId());
		testCaseForm.setInput(testCase.getInput());
		testCaseForm.setOutput(testCase.getOutput());
		testCaseForm.setTimeAsk(testCase.getTimeAsk());
		
		//set du lieu  cho form
		testCaseForm.setSubList(subjectBO.getAllSubject());

		return mapping.findForward("thanhCong");
	}
}

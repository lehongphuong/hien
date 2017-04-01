package action.testcase;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TestCase;
import model.bo.TestCaseBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.testcase.TestCaseForm;

public class TestCaseUpdateAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TestCaseForm testCaseForm = (TestCaseForm) form;

		String testId=request.getParameter("testId");

		TestCaseBO testCaseBO=new TestCaseBO();
		
		TestCase testCase=new TestCase();
		testCase.setTestId(testCaseForm.getTestId());
		testCase.setSubId(testCaseForm.getSubId());
		testCase.setInput(testCaseForm.getInput());
		testCase.setOutput(testCaseForm.getOutput());
		testCase.setTimeAsk(testCaseForm.getTimeAsk());

		testCaseBO.updateTestCase(testCase);

		return mapping.findForward("thanhCong");
	}

}

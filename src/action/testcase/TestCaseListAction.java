package action.testcase;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Menu;
import model.bean.TestCase;
import model.bo.MenuBO;
import model.bo.TestCaseBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.menu.MenuForm;
import form.testcase.TestCaseForm;

public class TestCaseListAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TestCaseForm testCaseForm=(TestCaseForm)form;
		
		TestCaseBO testCaseBO=new TestCaseBO();
		
		ArrayList<TestCase> testCaseList=testCaseBO.getAllTestCase(); 
		
		testCaseForm.setTestCaseList(testCaseList);
		
		return mapping.findForward("thanhCong");
		
	}

}

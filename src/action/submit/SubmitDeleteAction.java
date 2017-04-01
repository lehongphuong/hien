package action.submit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.SubmitBO;
import model.bo.TestCaseBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.submit.SubmitForm;
import form.testcase.TestCaseForm;

public class SubmitDeleteAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SubmitForm submitForm=(SubmitForm) form;
		
		String submitId=request.getParameter("submitId");

		SubmitBO submitBO=new SubmitBO();
		
		submitBO.deleteSubmit(Integer.parseInt(submitId));
		
		return mapping.findForward("thanhCong");
	}

}

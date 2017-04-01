package action.submit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Submit;
import model.bo.SubmitBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.submit.SubmitForm;

public class SubmitUpdateAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SubmitForm submitForm = (SubmitForm) form;
		
		String submitId = request.getParameter("submitId");
		
		SubmitBO submitBO=new SubmitBO();
		
		Submit submit=new Submit();
		
		submit.setSubmitId(submitForm.getSubmitId());
		submit.setSubId(submitForm.getSubId());
		submit.setUserId(submitForm.getUserId());
		submit.setTime(submitForm.getTime());
		submit.setPoint(submitForm.getPoint());

		submitBO.updateSubmit(submit);

		return mapping.findForward("thanhCong");
	}

}

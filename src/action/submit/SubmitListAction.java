package action.submit;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Submit;
import model.bo.SubmitBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.submit.SubmitForm;

public class SubmitListAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		SubmitForm submitForm = (SubmitForm) form;

		SubmitBO submitBO = new SubmitBO();

		ArrayList<Submit> submitList = submitBO.getAllSubmit();

		submitForm.setSubmitList(submitList);
		 

		return mapping.findForward("thanhCong");
	}

}

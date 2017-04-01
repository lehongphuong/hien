package action.submit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Menu;
import model.bean.Submit;
import model.bo.MenuBO;
import model.bo.SubjectBO;
import model.bo.SubmitBO;
import model.bo.UserBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.submit.SubmitForm;

public class SubmitPrepareUpdateAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SubmitForm submitForm = (SubmitForm) form;
		
		String submitId= request.getParameter("subId");

		SubmitBO submitBO=new SubmitBO();
		SubjectBO subjectBO=new SubjectBO();
		UserBO userBO=new UserBO();
		
		Submit submit=submitBO.getOneSubmitById(submitId);
		
		submitForm.setSubmitId(submit.getSubmitId());
		submitForm.setSubId(submit.getSubId());
		submitForm.setUserId(submit.getUserId());
		submitForm.setTime(submit.getTime());
		submitForm.setPoint(submit.getPoint());
		
		//set du lieu  cho form
		submitForm.setSubList(subjectBO.getAllSubject());
		submitForm.setUsList(userBO.getAllUser());

		return mapping.findForward("thanhCong");
	}

}

package action.subject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import model.bo.SubjectBO;
import form.subject.SubjectForm;

public class SubjectDeleteAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		SubjectForm subjectForm=(SubjectForm) form;
		
		String subId=request.getParameter("subId");

		SubjectBO subjectBO=new SubjectBO();
		
		subjectBO.deleteSubject(Integer.parseInt(subId));
		
		return mapping.findForward("thanhCong");
	}
}

package action.subject;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Menu;
import model.bean.Subject;
import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.subject.SubjectForm;

public class SubjectListAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SubjectForm subjectForm = (SubjectForm) form;

		SubjectBO subjectBO = new SubjectBO();

		ArrayList<Subject> subjectList = subjectBO.getAllSubject();

		subjectForm.setSubjectList(subjectList);
		 
		return mapping.findForward("thanhCong");
	}

}

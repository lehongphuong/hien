package action.subject;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Subject;
import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.subject.SubjectForm;

public class SubjectInsertAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SubjectForm subjectForm = (SubjectForm) form;

		SubjectBO subjectBO = new SubjectBO();

		Subject subject = new Subject();
		subject.setCateId(Integer.parseInt(subjectForm.getCateId()));
		subject.setTitle(subjectForm.getTitle());
		subject.setSuccessRate(subjectForm.getSuccessRate());
		subject.setMaxScore(subjectForm.getMaxScore());
		subject.setDifficutly(subjectForm.getDifficutly());
		
		subjectBO.insertSubject(subject);

		return mapping.findForward("thanhCong");
	}

}

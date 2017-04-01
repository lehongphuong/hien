package action.editorial;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Subject;
import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.editorial.EditorialForm;

public class EditorialPrepareInsertAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		EditorialForm editorialForm= (EditorialForm)form;
		
		SubjectBO subjectBO=new SubjectBO();
	 
		editorialForm.setSubjectList(subjectBO.getAllSubject());
		
		return mapping.findForward("thanhCong");
	}

}

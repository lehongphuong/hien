package action.editorial;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Editorial;
import model.bo.EditorialBO;
import model.bo.SubjectBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;



import form.editorial.EditorialForm;

public class EditorialPrepareUpdateAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		EditorialForm editorialForm=(EditorialForm)form;
		String editId=request.getParameter("editId");
		
		EditorialBO editorialBO=new EditorialBO();
		SubjectBO subjectBO=new SubjectBO();
		
		Editorial editorial=editorialBO.getOneEditorialById(editId);	
		
		editorialForm.setEditId(editorial.getEditId());
		editorialForm.setSubId(editorial.getSubId());
		editorialForm.setExplain(editorial.getExplain());	
		editorialForm.setCode(editorial.getCode());	
		
		//set du lieu cho form
				editorialForm.setSubjectList(subjectBO.getAllSubject());

		return mapping.findForward("thanhCong");
}
}
package action.editorial;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Editorial;
import model.bo.EditorialBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.editorial.EditorialForm;

public class EditorialInsertAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		EditorialForm editorialForm=(EditorialForm)form;
		
		
		EditorialBO editorialBO=new EditorialBO();
		
		Editorial editorial=new Editorial();
		editorial.setSubId(editorialForm.getSubId());
		editorial.setExplain(editorialForm.getExplain());
		editorial.setCode(editorialForm.getCode());
		
		editorialBO.insertEditorial(editorial);
		return mapping.findForward("thanhCong");
	}
}

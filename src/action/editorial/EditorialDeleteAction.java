package action.editorial;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Editorial;
import model.bo.EditorialBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.categories.CategoriesForm;
import form.editorial.EditorialForm;

public class EditorialDeleteAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		EditorialForm editorialForm=(EditorialForm)form;
		String editId=request.getParameter("editId");
		
		EditorialBO editorialBO=new EditorialBO();		
		
		editorialBO.deleteEditorial(Integer.parseInt(editId));		
		return mapping.findForward("thanhCong");	

	}
}

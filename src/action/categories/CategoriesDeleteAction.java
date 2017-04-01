package action.categories;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.CategoriesBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.categories.CategoriesForm;

public class CategoriesDeleteAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CategoriesForm categoriesForm=(CategoriesForm)form;
		String cateId=request.getParameter("cateId");
		CategoriesBO categoriesBO=new CategoriesBO();
		categoriesBO.deleteCategories(Integer.parseInt(cateId));
		
		return mapping.findForward("thanhCong");
	}
}

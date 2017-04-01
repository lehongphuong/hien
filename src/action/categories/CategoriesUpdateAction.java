package action.categories;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Categories;
import model.bo.CategoriesBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.categories.CategoriesForm;

public class CategoriesUpdateAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CategoriesForm categoriesForm=(CategoriesForm)form;
		
		String cateId = request.getParameter("cateId");
		CategoriesBO categoriesBO=new CategoriesBO();
		
		Categories categories=new Categories();
		categories.setCateId(categoriesForm.getCateId());
		categories.setMenuId(categoriesForm.getMenuId());
		categories.setName(categoriesForm.getName());

		categoriesBO.updateCategories(categories);
		
		return mapping.findForward("thanhCong");
		
	}
}

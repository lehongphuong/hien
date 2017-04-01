package action.categories;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Categories;
import model.bo.CategoriesBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.categories.CategoriesForm;

public class CategoriesInsertAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CategoriesForm categoriesForm=(CategoriesForm)form;
		
		
		CategoriesBO categoriesBO=new CategoriesBO();
		
		Categories categories=new Categories();
		categories.setMenuId(categoriesForm.getMenuId());
		categories.setName(categoriesForm.getName());
		
		categoriesBO.insertCategories(categories);
		return mapping.findForward("thanhCong");
	}
}

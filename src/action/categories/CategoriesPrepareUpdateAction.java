package action.categories;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import model.bean.Categories;
import model.bo.CategoriesBO;
import model.bo.MenuBO;
import form.categories.CategoriesForm;

public class CategoriesPrepareUpdateAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CategoriesForm categoriesForm=(CategoriesForm)form;
		String cateId=request.getParameter("cateId");
		
		
		CategoriesBO categoriesBO=new CategoriesBO();
		MenuBO menuBO=new MenuBO();
		
		
		Categories categories=categoriesBO.getOneCategoriesById(cateId);	
		
		categoriesForm.setCateId(categories.getCateId());
		categoriesForm.setMenuId(categories.getMenuId());
		categoriesForm.setName(categories.getName());		
		
		//set du lieu menu cho form
		categoriesForm.setMenuList(menuBO.getAllMenu());

		return mapping.findForward("thanhCong");
	
}
}

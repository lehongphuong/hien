package action.categories;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Menu;
import model.bo.MenuBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.categories.CategoriesForm;

public class CategoriesPrepareInsertAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CategoriesForm categoriesForm= (CategoriesForm)form;
		
		MenuBO menuBO=new MenuBO();
	
	 
		categoriesForm.setMenuList(menuBO.getAllMenu());
	
		
		return mapping.findForward("thanhCong");      
	}
}

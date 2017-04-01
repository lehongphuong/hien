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

public class CategoriesListAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CategoriesForm categoriesForm=(CategoriesForm)form;
		
		
		CategoriesBO categoriesBO=new CategoriesBO();
		
		ArrayList<Categories> categoriesList=categoriesBO.getAllCategories();
		
		
		categoriesForm.setCategoriesList(categoriesList);
		for(Categories m: categoriesList){
			System.out.println(""+m.getCateId());
			System.out.println(""+m.getMenuId());
			System.out.println(""+m.getName());
					}	
		
		return mapping.findForward("thanhCong");
	}
}

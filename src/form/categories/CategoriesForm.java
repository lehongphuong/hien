package form.categories;

import java.util.ArrayList;

import model.bean.Categories;
import model.bean.Menu;

import org.apache.struts.action.ActionForm;

public class CategoriesForm extends ActionForm {
	private int cateId;
	private int menuId;
	private String name;
	private ArrayList<Menu> menuList;

	public ArrayList<Menu> getMenuList() {
		return menuList;
	}

	public void setMenuList(ArrayList<Menu> menuList) {
		this.menuList = menuList;
	}

	public int getCateId() {
		return cateId;
	}

	public void setCateId(int cateId) {
		this.cateId = cateId;
	}

	public int getMenuId() {
		return menuId;
	}

	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<Categories> getCategoriesList() {
		return categoriesList;
	}

	public void setCategoriesList(ArrayList<Categories> categoriesList) {
		this.categoriesList = categoriesList;
	}

	ArrayList<Categories> categoriesList;
}

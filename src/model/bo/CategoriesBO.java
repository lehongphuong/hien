package model.bo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Categories;
import model.dao.CategoriesDAO;

public class CategoriesBO {
	CategoriesDAO dao = new CategoriesDAO();

	/*
	 * get all categories
	 */
	public ArrayList<Categories> getAllCategories() {
		return dao.getAllCategories();
	}

	public Categories getOneCategoriesById(String cateId) {
		return dao.getOneCategoriesById(cateId);
	}

	public void insertCategories(Categories categories) {
		dao.insertCategories(categories);

	}

	// update
	public void updateCategories(Categories categories) {
		dao.updateCategories(categories);
	}

	// delete
	public void deleteCategories(int cateId) {
		dao.deleteCategories(cateId);
	}

}

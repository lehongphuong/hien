package model.bo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Editorial;
import model.dao.EditorialDAO;

public class EditorialBO {
	EditorialDAO dao = new EditorialDAO();

	/*
	 * get all categories
	 */
	public ArrayList<Editorial> getAllEditorial() {
		return dao.getAllEditorial();
	}
	
	public Editorial getOneEditorialById(String editId) {
		return dao.getOneEditorialById(editId);
	}

	/*
	 * get editorial by subid
	 */
	public Editorial getAllEditorialBySubId(String subId) {
		return dao.getAllEditorialBySubId(subId);
	}

	public void insertEditorial(Editorial Editorial) {
		dao.insertEditorial(Editorial);

	}

	// update
	public void updateEditorial(Editorial Editorial) {
		dao.updateEditorial(Editorial);
	}

	// delete
	public void deleteEditorial(int editId) {
		dao.deleteEditorial(editId);

	}
}

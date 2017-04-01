package model.bo;

import java.util.ArrayList;

import model.bean.Subject;
import model.bean.Type;
import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;

	import model.bean.Type;
	import model.dao.TypeDAO;

	public class TypeBO {
		TypeDAO dao=new TypeDAO();
	/*
	 *get all categories
	 */
	public ArrayList<Type> getAllType() {
		return dao.getAllType();
	}

	/*
	 *get all categories
	 */
	//public ArrayList<Subject> getAllSubjectCate() {
//		return dao.getAllSubjectCate();
	//}


	public void insertType(Type Type) {
		dao.insertType(Type);

	}

	// update
	public void updateType(Type Type) {
		dao.updateType(Type);
	}

	//delete
		public void deleteType(int typeId) {
			dao.deleteType(typeId);
		}
		
		public Type getOneTypeById(String typeId) {
			return dao.getOneTypeById(typeId); 
					
		}
}

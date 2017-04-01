package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Type;

public class TypeDAO {
	Connection con = null;

	public TypeDAO() {
		super();
		this.con = DBConnect.getConnect();
	}

	/*
	 * get all categories
	 */
	public ArrayList<Type> getAllType() {
		ArrayList<Type> list = new ArrayList<>();
		String sql = "select * from Type";
		try {

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				Type l = new Type();
				l.setTypeId(rs.getInt(1));
				l.setType(rs.getString(2));
				list.add(l);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public Type getOneTypeById(String typeId) {
		Type l = new Type();
		String sql = "select * from Type where typeId='" + typeId + "'  ";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				l.setTypeId(rs.getInt(1));
				l.setType(rs.getString(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return l;
	}

	public void insertType(Type type) {
		String sql = "insert into Type values(?,?)";
		try {
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setInt(1, type.getTypeId());
			pr.setString(2, type.getType());

			pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// update
	public void updateType(Type type) {
		String sql = "update Type set typeId=?,type=? where typeId=?";
		try {
			PreparedStatement pr = con.prepareStatement(sql);

			pr.setInt(1, type.getTypeId());
			pr.setString(2, type.getType());

			pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// delete
	public void deleteType(int typeId) {
		String sql = "delete from Type where typeId='" + typeId + "'";
		try {
			Statement st = con.createStatement();
			st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.School;

public class SchoolDAO extends DAO {

	public List<School> selectALL() throws Exception{

		List<School> list = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(

				"SERECT * FROM SCHOOL");

		ResultSet rs = st.executeQuery();

		while(rs.next()){

			School scl = new School();

			scl.setCD(rs.getString("cd").charAt(0));

			scl.setSCLNAME(rs.getString("sclname").charAt(0));



			list.add(scl);

		}

		st.close();

		con.close();

		return list;

	}

}

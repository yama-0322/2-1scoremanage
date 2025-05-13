package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Student;

public class StudentDAO extends DAO {

    // 科目一覧を取得

    public List<Student> findAll() {

        List<Student> list = new ArrayList<>();

        Connection conn = null;

        try {

            conn = getConnection();

            String sql = "SELECT NO,NAME,ENT_YEAR,CLASS_NUM,IS_ATTEND,SCHOOL_CD FROM STUDENT";

            PreparedStatement pstmt = conn.prepareStatement(sql);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {

                Student stu = new Student();

    	        stu.setNo(rs.getString("no"));
    	        stu.setName(rs.getString("name"));
    	        stu.setEnt_Year(rs.getInt("ent_year"));
    	        stu.setClass_Num(rs.getString("class_num"));
    	        stu.setIs_Attend(rs.getBoolean("is_attend"));
    	        stu.setSchool_Cd(rs.getString("school_cd"));


                list.add(stu);

            }

            rs.close();

            pstmt.close();

        } catch (Exception e) {

            e.printStackTrace();

        } finally {

            try { if (conn != null) conn.close(); } catch (Exception e) {}

        }

        return list;

    }

    // 科目登録（修正済み）

// 科目登録（修正済み）


}


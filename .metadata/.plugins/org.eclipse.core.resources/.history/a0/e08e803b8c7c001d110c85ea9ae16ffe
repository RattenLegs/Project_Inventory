package com.myProject.myapp.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository //("bean id"), 빈 id를 지정하지 않으면 class 이름으로 자동등록됨, servlet-context.xml의 beans graph 볼것
public class TestDAO implements ITestDAO {

	@Autowired
	private JdbcTemplate template;
	
	@Override
	public void insertTest(TestVO test) {
		
		//전통적 방식 jdbc
		/*
		 * Connection conn = null; PreparedStatement pstmt = null;
		 * 
		 * String sql = "INSERT INTO scores " + "VALUES(id_seq.NEXTVAL,?,?,?,?,?,?)";
		 * 
		 * try { Class.forName("oracle.jdbc.driver.OracleDriver"); conn =
		 * DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "spring",
		 * "spring"); pstmt = conn.prepareStatement(sql); pstmt.setString(1,
		 * test.getStuName()); pstmt.setInt(2, test.getKor()); pstmt.setInt(3,
		 * test.getEng()); pstmt.setInt(4, test.getMath()); pstmt.setInt(5,
		 * test.getTotal()); pstmt.setDouble(6, test.getAverage());
		 * pstmt.executeUpdate(); //실행
		 * 
		 * System.out.println("점수 등록 성공!");
		 * 
		 * } catch (Exception e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } finally { if(pstmt != null) try { pstmt.close();
		 * if(conn != null) conn.close(); } catch (SQLException e) { // TODO
		 * Auto-generated catch block e.printStackTrace(); } }
		 */
		
		
		//Spring-jdbc: JdbcTemplate 활용!
		//# Spring-jdbc 방식의 처리: JdbcTemplate 활용!
		String sql = "INSERT INTO scores "
				+ "VALUES(id_seq.NEXTVAL,?,?,?,?,?,?)";
		template.update(sql, test.getStuName(), test.getKor(),
				test.getEng(), test.getMath(), test.getTotal(),
				test.getAverage());
	}
	
	@Override
	public List<TestVO> selectAllTests() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteTest(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public TestVO selectOne(int num) {
		// TODO Auto-generated method stub
		return null;
	}




	
}

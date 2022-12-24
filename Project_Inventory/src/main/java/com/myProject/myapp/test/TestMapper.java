package com.myProject.myapp.test;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

//JdbcTemplate에서 SELECT 쿼리를 위한 ResultSet 사용을 편하게 하기 위한
//클래스를 생성.
//RowMapper 인터페이스를 구현해야 합니다.
public class TestMapper implements RowMapper<TestVO> {

	@Override
	public TestVO mapRow(ResultSet rs, int rowNum) throws SQLException {

		System.out.println("mapRow 메서드 발동!");
		//mapRow: 일종의 포장방법
		System.out.println("rowNum: " + rowNum);

		//TestVO에 ResultSet 안에 있는 것들을 하나씩 채워넣을 것
		TestVO vo = new TestVO();
		vo.setStuId(rs.getInt("stu_id"));
		vo.setStuName(rs.getString("stu_name"));
		vo.setKor(rs.getInt("kor"));
		vo.setEng(rs.getInt("eng"));
		vo.setMath(rs.getInt("math"));
		vo.setTotal(rs.getInt("total"));
		vo.setAverage(rs.getDouble("average"));

		return vo;
	}
}
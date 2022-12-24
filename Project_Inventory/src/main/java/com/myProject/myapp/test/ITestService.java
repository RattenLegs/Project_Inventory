package com.myProject.myapp.test;

import java.util.List;

public interface ITestService {
	
	//점수 등록 기능
	void insertTest(TestVO test);
	
	//점수 전체 조회 기능
	List<TestVO> selectAllTests();
	
	//점수 삭제 기능
	void deleteTest(int num);
	
	//점수 개별 조회 기능
	TestVO selectOne(int num);

}













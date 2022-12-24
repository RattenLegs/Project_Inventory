package com.myProject.myapp.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public abstract class TestService implements ITestService {

	@Autowired
	private ITestDAO dao;

	@Override
	public void insertTest(TestVO test) {
		// TODO Auto-generated method stub
		test.calcData();
		System.out.println("service: " + test);
		dao.insertTest(test);
	}

	@Override
	public List<TestVO> selectAllTests() {
		// TODO Auto-generated method stub
		return dao.selectAllTests();
	}

	@Override
	public void deleteTest(int num) {
		// TODO Auto-generated method stub
		dao.deleteTest(num - 1);
	}

	@Override
	public TestVO selectOne(int num) {
		// TODO Auto-generated method stub
		return dao.selectOne(num - 1);
	}
	

	

}








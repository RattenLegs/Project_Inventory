package com.myProject.myapp;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myProject.myapp.freeboard.vo.FreeBoardVO;
import com.myProject.myapp.freeboard.mapper.IFreeBoardMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/config/db-config.xml")
public class freeBoardMapperTest {

	@Autowired
	private IFreeBoardMapper mapper;
	
	/*
	 * @Autowired public freeBoardMapperTest(IFreeBoardMapper mapper) { this.mapper
	 * = mapper; } //생성자 주입으로 전환(시도)
	 */	
	@Test
	public void registTest() {
		for(int i=1; i<=30; i++) {
			FreeBoardVO vo = new FreeBoardVO();
			vo.setTitle("마이페이지 테스트" + i);
			vo.setWriter("kim1234");
			vo.setContent("테스트 글쓰기 내용입니다." + i);
			mapper.regist(vo);
		}
	}
}

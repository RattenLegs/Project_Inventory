package com.myProject.myapp;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.myProject.myapp.inventory.mapper.IInventoryMapper;
import com.myProject.myapp.inventory.vo.InventoryVO;

@WebAppConfiguration // 웹 컨텍스트 테스트 활성화
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/config/db-config.xml")
public class InventoryMapperTest {



		@Autowired
		private IInventoryMapper mapper;

		@Test
		public void registTest() {
			for (int i = 1; i <= 30; i++) {
				InventoryVO vo = new InventoryVO();
				vo.setShoeGender("남화"); //홀수=남화, 짝수=여화
				vo.setDesign("1357"); //랜덤번호 받아서 사용
				vo.setColor("black"); //black, brown, navy 등
				vo.setShoeSize(i*10); // 250~300 랜덤
				vo.setShoeNum(i);
				vo.setPrice(i*1000+100);
				vo.setSalePercent(30); //홀수=30, 짝수=40
				vo.setSale(i); // salePrice/100*(100-salePercent)
				mapper.regist(vo);
			}
		}


	 
}

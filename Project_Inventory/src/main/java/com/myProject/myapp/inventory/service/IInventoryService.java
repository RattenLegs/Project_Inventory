package com.myProject.myapp.inventory.service;

import java.util.List;

import com.myProject.myapp.inventory.vo.InventoryVO;
import com.myProject.myapp.util.vo.PageVO;

public interface IInventoryService {
	//글 등록
	void regist(InventoryVO vo);
	
	//글 목록
	List<InventoryVO> getList(PageVO vo);
	
	//총 게시물 수
	int getTotal(PageVO vo);
	
	//상세보기
	InventoryVO getContent(int bno);
	
	//수정
	void update(InventoryVO vo);
	
	//삭제
	void delete(int bno);

}

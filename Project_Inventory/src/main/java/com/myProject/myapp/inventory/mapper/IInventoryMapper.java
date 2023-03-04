package com.myProject.myapp.inventory.mapper;

import java.util.List;

import com.myProject.myapp.inventory.vo.InventoryVO;
import com.myProject.myapp.util.vo.PageVO;

public interface IInventoryMapper {

	// 글 등록
	void regist(InventoryVO vo);

	// 글 목록
	List<InventoryVO> getList(PageVO vo);
	// getList는 PageVO를 받는다.
	// 사용자가 선택한 페이지 정보와 검색정보를 한꺼번에 받아서 처리

	// 총 게시물 수
	int getTotal(PageVO vo);
	// 총 게시물의 수 = COUNT = 리턴타입 int
	// 검색에 따른 페이지 구현, 동적 SQL 처리

	// 상세보기
	InventoryVO getContent(int bno);
	// 몇번 글 상세보기인지 알려줘야 반응: int bno
	// 글 하나의 정보만 끌고오면 되니까 InventoryBoardVO

	// 수정
	void update(InventoryVO vo);
	// 수정에 필요한 정보를 알려줘야 함

	// 삭제
	void delete(int bno);
	// 리턴 없이 글번호 주면 삭제

}
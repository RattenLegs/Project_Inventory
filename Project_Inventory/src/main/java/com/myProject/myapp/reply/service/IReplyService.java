package com.myProject.myapp.reply.service;

import java.util.List;

import com.myProject.myapp.reply.vo.ReplyVO;
import com.myProject.myapp.util.vo.PageVO;



public interface IReplyService {

	void replyRegist(com.myProject.myapp.reply.vo.ReplyVO vo); //댓글 등록
	List<ReplyVO> getList(PageVO vo, int bno);  //목록 요청
	int getTotal(int bno); //댓글 개수
	
	int pwCheck(ReplyVO vo); //비밀번호 확인
	void update(ReplyVO vo); //댓글 수정
	void delete(int rno); //댓글 삭제

	
}

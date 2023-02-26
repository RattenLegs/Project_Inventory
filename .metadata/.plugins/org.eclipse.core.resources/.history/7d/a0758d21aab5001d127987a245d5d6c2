package com.spring.myweb.reply.service;

import java.util.List;

import com.spring.myweb.command.ReplyVO;
import com.spring.myweb.util.PageVO;

public interface IReplyService {

	void replyRegist(ReplyVO vo); //댓글 등록
	List<ReplyVO> getList(PageVO vo, int bno);  //목록 요청
	int getTotal(int bno); //댓글 개수
	
	int pwCheck(ReplyVO vo); //비밀번호 확인
	void update(ReplyVO vo); //댓글 수정
	void delete(int rno); //댓글 삭제

	
}

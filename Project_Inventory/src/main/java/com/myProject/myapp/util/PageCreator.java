package com.myProject.myapp.util;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.myProject.myapp.util.vo.PageVO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageCreator {

	
	private PageVO paging;
	private int articleTotalCount;
	private int endPage;
	private int beginPage;
	private boolean prev;
	private boolean next;
	
	private final int buttonNum = 5; //왜 final?
	
	//URI 파라미터를 쉽게 만들어 주는 유틸 메서드
	//이전 프로젝트에서는 a태그마다 파라미터값을 직접 묻혀둠, 이제는 PageCreator에 makeURI 만들어서 직접 작성하는 URL을 짧게 구현하고, 필요하다면 자바스크립트/JQUERY 적극적으로 이용
	//직접 쓸 내용이 굉장히 많기 때문에 여러 데이터를 넘길거면 차라니 form을 이용하면 어떨까?
	//form태그 안에 입력된 여러가지 값이 같이 넘어갈 수 있음
	public String makeURI(int page) {
		UriComponents ucp = UriComponentsBuilder.newInstance().queryParam("page", page)
															  .queryParam("cpp", paging.getCpp())
															  .queryParam("keyword", paging.getKeyword())
															  .queryParam("condition", paging.getCondition())
															  .build();
		return ucp.toUriString();
	}

	
	private void calcDataOfPage() {
		
		endPage = (int) (Math.ceil(paging.getPageNum() / (double) buttonNum) * buttonNum);
		
		beginPage = (endPage - buttonNum) + 1;
		
		prev = (beginPage == 1) ? false : true;
		
		next = articleTotalCount <= (endPage * paging.getCpp()) ? false : true;
		
		if(!next) {
			endPage = (int) Math.ceil(articleTotalCount / (double) paging.getCpp()); 
		}
		
	}
	
	//컨트롤러가 총 게시물의 개수를 PageCreator에게 전달한 직후에 
	//바로 페이징 버튼 알고리즘이 돌아갈 수 있도록 setter를 커스텀.
	public void setArticleTotalCount(int articleTotalCount) {
		this.articleTotalCount = articleTotalCount;
		calcDataOfPage();
	}
	
}

package com.myProject.myapp.freeboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/freeboard") //컨트롤러 자체에 공통된 URI 매핑
public class FreeboardController {
	public FreeboardController(){
		System.out.println("FreeboardController 생성");

	}

	/*
	 * @RequestMapping(value = "/freeboard/freeboard", method = RequestMethod.GET)
	 */
	@GetMapping("/freeboard")
	/* 
	 * public String repairList() { return "/freeboard/freeboard"; } 
	 * Mapping과 freeboard 같으니 void로 처리
	 * void면 viewResolver에게 줄 수 있는 문자열이 없으니 url을 전달
	 * return에 쓸 문자열과 url이 같으면 void로 처리하면 됨
	 * */
	public void repairList() {}
		/*
		 * @RequestMapping(path = "/freeboard/freeboard/test", method =
		 * RequestMethod.GET) public String testCall() {
		 * System.out.println("test 요청 들어옴"); return "test"; //test는 dispatchersevlet으로,
		 * d는 test를 viewResolver에게, viewResolver는 test 앞에 prefix, 뒤에 suffix 붙임 }
		 */
}

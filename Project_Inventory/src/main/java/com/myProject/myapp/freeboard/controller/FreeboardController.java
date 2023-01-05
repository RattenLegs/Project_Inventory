package com.myProject.myapp.freeboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/freeboard") //컨트롤러 자체에 공통된 URI 매핑
public class FreeboardController {
	public FreeboardController(){
		System.out.println("FreeboardController 생성");

	}

	@GetMapping("/freeList")
	public void freeList() {}


}

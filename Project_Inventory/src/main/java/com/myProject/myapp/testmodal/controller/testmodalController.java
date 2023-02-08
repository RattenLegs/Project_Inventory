package com.myProject.myapp.testmodal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/testModal")
public class testmodalController {

	public testmodalController() {
		System.out.println("testmodalController 생성");

	}

	@RequestMapping(value = "/testModalMain", method = RequestMethod.GET)
	public String inventoryList() {
		System.out.println("테스트모달로 이동");
		return "/testModal/testModalMain";
	}
	
}

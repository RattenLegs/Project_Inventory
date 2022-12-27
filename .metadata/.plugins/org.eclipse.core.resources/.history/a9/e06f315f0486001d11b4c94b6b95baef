package com.myProject.myapp.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	public UserController(){
		System.out.println("UserLoginController 생성!");
	}
	
	@GetMapping(value = "/userLogin") //안먹힘
	public String userLogin() {
		System.out.println("userLogin 발동");
		return "/user/userLogin";
	}
	
	@GetMapping(value = "/userJoin") //안먹힘
	public String userJoin() {
		System.out.println("userJoin발동");
		return "/user/userJoin";
	}
	
}

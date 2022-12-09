package com.myProject.myapp.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller("/user")
public class UserLoginController {

	@GetMapping(value = "/userlogin")
	public String userLogin() {
		
		return "userlogin";
	}
	
}

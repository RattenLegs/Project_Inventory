package com.myProject.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.swing.JOptionPane;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myProject.myapp.user.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/user/userlogin";
	}
	
	@PostMapping("/home")
	public String goHome(UserVO vo) {
		if(vo.getUserId().equals("vnerSY") && 
				vo.getUserPw().equals("aaa1111")) {
			return "/home";
		} else {
			/* JOptionPane.showMessageDialog(null, "ID/비밀번호가 일치하지 않습니다. 다시 입력해주세요."); */
			return "/user/userlogin";
		}
	}
}

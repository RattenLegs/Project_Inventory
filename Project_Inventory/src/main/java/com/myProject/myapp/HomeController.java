package com.myProject.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

		model.addAttribute("serverTime", formattedDate);

		return "/home";
	}

	/*
	 * @PostMapping("/home") public String goHome(UserVO vo, HttpServletResponse
	 * response) throws IOException { if(vo.getUserId().equals("vnerSY") &&
	 * vo.getUserPw().equals("aaa1111")) { return "/home"; } else {
	 * JOptionPane.showMessageDialog(null, "ID/비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
	 * response.setContentType("text/html; charset=utf-8"); PrintWriter out =
	 * response.getWriter();
	 * out.println("<script>alert('비밀번호를 잘못 입력하셨습니다.'); </script>"); out.close(); //
	 * /home로 돌아가는 현상 발생해서 조치 필요 > 후순위 //1. alert에서 팝업으로 2. 제대로 돌아가게 return
	 * "/user/userlogin";
	 * 
	 * } }
	 */
}

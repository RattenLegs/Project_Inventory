package com.myProject.myapp.repair;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RepairController {

	
	// return을 void로 설정하면 uri를 jsp forward할때 사용함

	/*@RequestMapping("/board/list.do")
		public String list() {
			return "board/list";
		}
	*/
	
	/*
	 * @RequestMapping(path = "/repairboard/repairList", method = RequestMethod.GET)
	 * public String repairList() { return "redirect:/repairboard/repairList"; }
	 */
}

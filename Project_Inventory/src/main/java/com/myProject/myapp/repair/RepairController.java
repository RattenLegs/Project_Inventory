package com.myProject.myapp.repair;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RepairController {

	

	/*@RequestMapping("/board/list.do")
		public String list() {
			return "board/list";
		}
	*/
	
	/*
	 * @RequestMapping(path = "/repairboard/repairList", method = RequestMethod.GET)
	 * public String repairList() { return "redirect:/repairboard/repairList"; }
	 */
	
	public RepairController(){
		System.out.println("RepairController 생성");

	}
	@RequestMapping(path = "/repairboard/repairList", method = RequestMethod.GET)
	  public String repairList() { return "/repairboard/repairList"; }
}

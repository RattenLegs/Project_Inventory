package com.myProject.myapp.repair.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myProject.myapp.repair.vo.AddRepairVO;

@Controller
@RequestMapping("/repairboard")
public class RepairController {

	/*
	 * @RequestMapping("/board/list.do") public String list() { return "board/list";
	 * }
	 */

	/*
	 * @RequestMapping(path = "/repairboard/repairList", method = RequestMethod.GET)
	 * public String repairList() { return "redirect:/repairboard/repairList"; }
	 */

	public RepairController() {
		System.out.println("RepairController 생성");

	}

	@RequestMapping(value = "/repairList", method = RequestMethod.GET)
	public String repairList() {
		return "/repairboard/repairList";
	}
	
	@GetMapping("/addRepair")
	public String addRepair() {
		System.out.println("수선등록으로 이동");
		return "/repairboard/addRepair";
	}
	
	@PostMapping("/addRepairCheck")
	public ModelAndView addRepairCheck(AddRepairVO AddRepair) {
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("num", AddRepair.getNum());
		mv.addObject("startDay", AddRepair.getStartDay());
		mv.addObject("name", AddRepair.getName());
		mv.addObject("phoneNumber", AddRepair.getPhoneNumber());
		mv.addObject("design", AddRepair.getDesign());
		mv.addObject("text", AddRepair.getText());
		mv.addObject("promiseDay", AddRepair.getPromiseDay());
		mv.addObject("endDay", AddRepair.getEndDay());
		mv.addObject("etc", AddRepair.getEtc());
		mv.setViewName("/repairboard/addRepairCheck");
		
		System.out.println("수선목록 전송");
		System.out.println(AddRepair.getNum());
		System.out.println(AddRepair.getStartDay());
		System.out.println(AddRepair.getName());
		System.out.println(AddRepair.getPhoneNumber());
		System.out.println(AddRepair.getDesign());
		System.out.println(AddRepair.getText());
		System.out.println(AddRepair.getPromiseDay());
		System.out.println(AddRepair.getEndDay());
		System.out.println(AddRepair.getEtc());
		
		return mv;
	}
	
}

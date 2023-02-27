package com.myProject.myapp.inventory.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myProject.myapp.inventory.vo.AddInventoryVO;

@Controller
@RequestMapping("/inventoryboard")
public class InventoryController {

	public InventoryController() {
		System.out.println("InventoryController 생성");

	}

	@RequestMapping(value = "/inventoryList", method = RequestMethod.GET)
	public String inventoryList() {
		System.out.println("재고로 이동");
		return "/inventoryboard/inventoryList";
	}

	/*
	 * @GetMapping("/addInventory") public String addInventory() {
	 * System.out.println("재고등록으로 이동"); return "/inventoryboard/addInventory"; }
	 */
	@PostMapping("/addInventoryCheck")
	public ModelAndView addInventoryCheck(AddInventoryVO AddInventory) {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("shoeGender", AddInventory.getshoeGender());
		mv.addObject("design", AddInventory.getdesign());
		mv.addObject("color", AddInventory.getcolor());
		mv.addObject("size", AddInventory.getsize());
		mv.addObject("num", AddInventory.getnum());
		mv.addObject("price", AddInventory.getprice());
		mv.addObject("sum", AddInventory.getsum());
		mv.setViewName("/inventoryboard/addInventoryCheck");
		
		System.out.println("인벤토리 전송");
		System.out.println(AddInventory.getshoeGender());
		System.out.println(AddInventory.getdesign());
		System.out.println(AddInventory.getcolor());
		System.out.println(AddInventory.getsize());
		System.out.println(AddInventory.getnum());
		System.out.println(AddInventory.getprice());		
		System.out.println(AddInventory.getsum());	
		
		return mv;
	}

	
}



// 요청 URI 주소가 같더라도, 전송 방식에 따라서 매핑을 다르게 진행하기 때문에
// 같은 주소를 사용하는 것이 가능(GET > 화면, POST > 입력값)

/*
 * 1. 전통적인 jsp/servlet 방식의 파라미터 읽기 처리 방법. - HttpServletRequest 객체를 활용. (우리가
 * jsp에서 활용하던 방식)
 * 
 * 
 * @PostMapping("/join") public void register(HttpServletRequest request) {
 * System.out.println("/request/join: POST");
 * 
 * System.out.println("ID: " + request.getParameter("userId"));
 * System.out.println("PW: " + request.getParameter("userPw"));
 * System.out.println("HOBBY: " +
 * Arrays.toString(request.getParameterValues("hobby"))); }
 */

/*
 * 2. @RequestParam 아노테이션을 이용한 요청 파라미터 처리.
 *  
 * @RequestParam("파라미터 변수명") 값을 받아서 처리할 변수
 * 
 * 
 * @PostMapping("/join") public void register(@RequestParam("userId") String id,
 * 
 * @RequestParam("userPw") String pw,
 * 
 * @RequestParam(value="hobby", required=false, defaultValue="no hobby person")
 * List<String> hobbies) {
 * 
 * System.out.println("ID: " + id); System.out.println("PW: " + pw);
 * System.out.println("hobby: " + hobbies);
 * 
 * }
 */

/*
 * 3. 커맨드 객체를 활용한 파라미터 처리. - 파라미터 데이터와 연동되는 VO 클래스가 필요합니다.
 */
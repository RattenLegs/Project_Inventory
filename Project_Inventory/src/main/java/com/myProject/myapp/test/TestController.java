package com.myProject.myapp.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/test")
public class TestController {

	public TestController()  {
		System.out.println("testController 생성!");
	}

	// 컨트롤러와 서비스 계층 사이의 의존성 자동 주입을 위해 변수를 선언.
	//도대체 시발 어떻게 이걸 해결해야 할까요
	//결국 다시 하나하나 공부중
	@Autowired
	private ITestService service;
	
	/*
	 * public void setITestService(ITestService service) { this.service = service; }
	 */
	// 점수 등록 화면을 열어주는 처리를 하는 메서드.
	@GetMapping("/register")
	public String register() {
		System.out.println("/test/register: GET");
		return "test/write-form";
	}

	// 점수 등록 요청을 처리할 메서드
	@PostMapping("/register")
	public String register(TestVO vo) {
		System.out.println("/test/register: POST");
		System.out.println("param: " + vo);
		service.insertTest(vo);
		return "test/write-result";
	}

	// 점수 전체 조회를 처리하는 요청 메서드
	@GetMapping("/list")
	public void list(Model model) {
		System.out.println("/test/list: GET");
		// List<TestVO> list = service.selectAllTests();
		model.addAttribute("tList", service.selectAllTests()); //니가 문제
	}

	// 점수 삭제 요청 처리 메서드
	@GetMapping("/delete")
	public String delete(@RequestParam("stuNum") int stuNum, RedirectAttributes ra) {
		// 삭제 처리를 완료하신 후 list 요청이 다시 컨트롤러로 들어갈 수 있도록 처리해 보세요.
		// list요청이 다시 들어가서 list.jsp로 갔을 때, 삭제 이후에 간 것이 판단된다면
		// 브라우저에 '삭제가 완료되었습니다.' 문구를 빨간색으로 띄워보세요.
		// (RedirectAttributes 사용, 경고창으로 띄워도 좋아요.)
		System.out.println("삭제할 학번: " + stuNum);
		service.deleteTest(stuNum);
		// ra.addFlashAttribute("msg", stuNum + "번 학생의 삭제가 완료되었습니다.");
		ra.addFlashAttribute("msg", "delSuccess");
		return "redirect:/test/list";
	}

	@GetMapping("/search")
	public void search() {
		System.out.println("/test/search: GET");
	}

	// 점수 개별 조회 처리 요청 메서드
	@GetMapping("/selectOne")
	public String selectOne(@RequestParam("stuNum") int stuNum, Model model, RedirectAttributes ra) {
		System.out.println("/test/selectOne: GET");
		TestVO vo = service.selectOne(stuNum);
		System.out.println(vo);
		if (vo == null) {
			ra.addFlashAttribute("msg", "검색 결과가 없습니다.");
			return "redirect:/test/search";
		}

		model.addAttribute("stu", vo);
		return "test/search-result";
	}

}
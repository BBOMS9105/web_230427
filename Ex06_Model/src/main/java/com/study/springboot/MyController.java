package com.study.springboot;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller // class에
public class MyController {
	
	@RequestMapping("/test1")
	public String test1(Model model) {
		System.out.println("/test1 실행");
		// Model 객체를 이용해서, view로 Data 전달
		// 데이터만 설정이 가능
		
		// jsp로 값을 전달하는 방법
		model.addAttribute("name", "홍길동");
		model.addAttribute("city", "시흥시");
		
		return "test1";		// String Model 사용하면 리턴만 주면 됨
		
	}

	@RequestMapping("/mv")					// 주소 매핑
	public ModelAndView test2() {			// 메소드 
		System.out.println("/mv 진입");		// 해당 주소 진입했으면 콘솔에 출력
		// 데이터와 뷰를 동시에 설정이 가능
		ModelAndView mv = new ModelAndView(); // mv에 new로 뭔가 생성
		// 생성자에 jsp 파일명 바로 지정 가능(그럼 세터 사용 안해도 됨)
//		ModelAndView mv = new ModelAndView("view/myView");
		
		
		List<String> list = new ArrayList<>();  // 리스트 생성
		list.add("test1");
		list.add("test2");
		list.add("test3");
		
		mv.addObject("lists", list);		// jstl로 호출
		mv.addObject("ObjectTest", "테스트입니다."); // 
		mv.addObject("name", "홍길동");
		
		mv.setViewName("view/myView");  // jsp 파일 명을 지정
										// ModelAndView를 사용하면
										// setViewName을 사용해야함
		
		return mv;						// return도 줘야함
		
	}
	
	
	@RequestMapping("/el")
	public String el() {
		System.out.println("el 진입");
		return "el";
	}
	
	@RequestMapping("/jstl")
	public String jstl() {
		System.out.println("jstl 진입");
		return "jstl";
	}
	
	@RequestMapping("/gugu")
	public String gugu() {
		System.out.println("gugu 진입");
		return "gugu";
	}
	
}





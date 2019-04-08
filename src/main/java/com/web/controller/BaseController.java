package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {

	@RequestMapping("/index")
	public String ToIndex() {
		System.out.println("----------------------测试----------------------");
		return "index";
	}
	@RequestMapping("/regist")
	public String ToRegist() {
		System.out.println("----------------------测试----------------------");
		return "Regist";//WEB-INF/jsp/Regist.jsp
	}
	@RequestMapping("/login")
	public String ToLogin() {
		System.out.println("----------------------测试----------------------");
		return "Login";//WEB-INF/jsp/login.jsp
	}
	@RequestMapping("/feedback")
	public String ToFeedback() {
		System.out.println("----------------------测试----------------------");
		return "Feedback";//WEB-INF/jsp/feedback.jsp
	}

}

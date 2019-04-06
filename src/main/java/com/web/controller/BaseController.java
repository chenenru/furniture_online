package com.web.controller;

import com.web.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {
	
	/**测试网站首页
	 * @return
	 */


	@Autowired
	TestService service;

	@RequestMapping("/index")
	public String ToIndex() {
		System.out.println("----------------------测试----------------------");
		service.test();
		return "index";
	}
	@RequestMapping("/regist")
	public String ToRegist() {
		System.out.println("----------------------测试----------------------");
		return "Regist";//WEB-INF/jsp/Regist.jsp
	}
//	@RequestMapping("/login")
//	public String ToLogin() {
//		System.out.println("----------------------测试----------------------");
//		return "Login";//WEB-INF/jsp/Regist.jsp
//	}
	@RequestMapping("/feedback")
	public String ToFeedback() {
		System.out.println("----------------------测试----------------------");
		return "Feedback";//WEB-INF/jsp/Regist.jsp
	}

}

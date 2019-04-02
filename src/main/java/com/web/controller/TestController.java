package com.web.controller;

import com.web.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
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
	@RequestMapping("/about")
	public String ToAbout() {
		System.out.println("----------------------测试html----------------------");
		service.test();
		return "about";
	}
	@RequestMapping("/checkout")
	public String ToCheckout() {
		System.out.println("----------------------测试html----------------------");
		service.test();
		return "checkout";
	}
	@RequestMapping("/login")
	public String ToLogin() {
		System.out.println("----------------------测试html----------------------");
		service.test();
		return "Login";
	}
	@RequestMapping("/register")
	public String ToRegister() {
		System.out.println("----------------------测试html----------------------");
		service.test();
		return "Regist";
	}
	@RequestMapping("/single")
	public String ToSingle() {
		System.out.println("----------------------测试html----------------------");
		service.test();
		return "single";
	}
	@RequestMapping("/typo")
	public String ToTypo() {
		System.out.println("----------------------测试html----------------------");
		service.test();
		return "typo";
	}
}

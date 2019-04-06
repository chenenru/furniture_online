package com.web.controller;

import com.web.pojo.TbClient;
import com.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@RequestMapping("/client")
@Controller
public class LoginController {
    @Autowired
        private LoginService loginService;


    @RequestMapping("/login")
    public String Login(TbClient tbClient, Model model){
        //调用service方法
        tbClient = loginService.findClientByEmail(tbClient.getcEmail(),tbClient.getcPwd());

        if(tbClient!=null){
             model.addAttribute("client", tbClient);
             return "login";
        }
        return "error";
    }
}

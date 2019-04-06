package com.web.controller;

import com.web.pojo.TbClient;
import com.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @Autowired
        private LoginService loginService;

    @RequestMapping("/login")
    public String Login(TbClient tbClient, HttpServletRequest request){
        boolean loginType = loginService.login(tbClient.getcEmail(),tbClient.getcPwd());
        if(loginType){
            request.setAttribute("tbClient",tbClient);
            return "login";
        }
        else{
            request.setAttribute("message","密码错误");
            return "error";
        }
    }


}

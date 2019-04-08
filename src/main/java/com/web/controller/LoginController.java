package com.web.controller;

import com.web.pojo.TbClient;
import com.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.net.ssl.HandshakeCompletedEvent;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RequestMapping("/client")
@Controller
public class LoginController {
    @Autowired
        private LoginService loginService;


    @RequestMapping("/login")
    public String Login(HttpServletRequest request, HttpSession session,TbClient tbClient, Model model, @RequestParam("c_email") String c_email, @RequestParam("c_pwd") String c_pwd){
        //调用service方法
        tbClient = loginService.findClientByEmail(c_email,c_pwd);
        if(tbClient!=null){
            request.getSession().setAttribute("login_user_id", tbClient.getId());
            session.setAttribute("tbClient",tbClient);
             model.addAttribute("client", tbClient);
             return "index";
        }
        return "error";
    }
}

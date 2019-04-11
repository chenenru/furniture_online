package com.web.controller;

import com.web.pojo.TbAdmin;
import com.web.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @ClassName AdminController
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/11 19:29
 * @Version 1.0
 **/
@RequestMapping("/admin")
@Controller
public class AdminController {

    @Autowired
    AdminService adminService;

    @RequestMapping("/login")
    public String AdminLogin(String username,String password,HttpSession session){
//        System.out.println(username + password   );

        TbAdmin tbAdmin = adminService.Admin_login(username,password);

        if(tbAdmin != null){
            session.setAttribute("admin",tbAdmin);
            return "orderManage";
        }
        else
            return "AdminLogin";
    }


}

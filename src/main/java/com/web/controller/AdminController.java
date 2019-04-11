package com.web.controller;

import com.web.pojo.TbAdmin;
import com.web.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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






    @RequestMapping("/gotoAdmin")
    @ResponseBody
    public TbAdmin getAdminInfo(Integer id){
        TbAdmin tbAdmin = adminService.getAdminById(id);

//        System.out.println("订单装换情况：：" + tbOrder);

        return tbAdmin;
    }


    @RequestMapping("updateAdmin")
    public String updateAdmin(TbAdmin tbAdmin){
//        System.out.println("更新的订单" + tbOrder);

        adminService.updateAdmin(tbAdmin);

        return "adminManage";
    }

    @RequestMapping("addAdmin")
    public String addAdmin(String usr,String pwd){
        TbAdmin tbAdmin = new TbAdmin();
        tbAdmin.setaEmail(usr);
        tbAdmin.setaPwd(pwd);
        adminService.insertAdmin(tbAdmin);

        return "adminManage";

    }

    @RequestMapping("removeAdmin")
    public String removeAdmin(int id){
        adminService.removeAdminById(id);

        return "adminManage";
    }



    @RequestMapping("/login")
    public String AdminLogin(String username,String password,HttpSession session){
        System.out.println(username + password   );

//        String email = username;

        TbAdmin tbAdmin = adminService.Admin_login(username,password);

        if(tbAdmin != null){
            session.setAttribute("admin",tbAdmin);
            return "orderManage";
        }
        else
            return "AdminLogin";
    }


}

package com.web.controller;

import com.web.pojo.*;
import com.web.service.*;
import com.web.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @ClassName OrderManage
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/11 13:28
 * @Version 1.0
 **/
@Controller
public class ManageController {

    @Autowired
    ManageOrderService manageOrderService;
    @Autowired
    CommentService commentService;
    @Autowired
    FeedbackService feedbackService;
    @Autowired
    AdminService adminService;
    @Autowired
    ClientService clientService;



    @RequestMapping("manageOrder")
    public String showOrder(@RequestParam(defaultValue="1")Integer page, @RequestParam(defaultValue="10")Integer rows,
                            @RequestParam(value = "type",defaultValue = "0")int type,
                            @RequestParam(defaultValue = "-1") int c_id, Model model, HttpSession session){

        if(session.getAttribute("admin") == null)
            return "AdminLogin";


//        System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
//        System.out.println(c_id);


        Page<Manage_Order> manage_orderList = manageOrderService.selectManage_OrderList(page, rows, type,c_id);

        for(Manage_Order manage_order : manage_orderList.getRows()){
            System.out.println(manage_order.toString());
        }

        model.addAttribute("page", manage_orderList);


        return "orderManage";
    }

    @RequestMapping("manageComment")
    public String showComment(@RequestParam(defaultValue="1")Integer page,
                              @RequestParam(defaultValue="10")Integer rows, Model model, HttpSession session){

        if(session.getAttribute("admin") == null)
            return "AdminLogin";

        Page<Manage_Comment> manage_orderList = commentService.selectManage_CommentList(page, rows);

//        for(Manage_Comment manage_order : manage_orderList.getRows()){
//            System.out.println(manage_order.toString());
//        }

        model.addAttribute("page", manage_orderList);

        return "commentManage";
    }


    @RequestMapping("manageFeedback")
    public String showFeedback(@RequestParam(defaultValue="1")Integer page,
                               @RequestParam(defaultValue="10")Integer rows, Model model, HttpSession session){
        Page<Manage_Feedback> manage_orderList = feedbackService.selectManage_FeedbackList(page, rows);

        if(session.getAttribute("admin") == null)
            return "AdminLogin";

//        for(Manage_Feedback manage_order : manage_orderList.getRows()){
//            System.out.println(manage_order.toString());
//        }

        model.addAttribute("page", manage_orderList);

        return "feedbackManage";

    }

    @RequestMapping("manageAdmin")
    public String showAdmin(@RequestParam(defaultValue="1")Integer page,
                            @RequestParam(defaultValue="10")Integer rows, Model model, HttpSession session){

        if(session.getAttribute("admin") == null)
            return "AdminLogin";

        Page<Manage_Admin> manage_orderList = adminService.selectManage_AdminList(page, rows);

//        for(Manage_Admin manage_order : manage_orderList.getRows()){
//            System.out.println(manage_order.toString());
//        }

        model.addAttribute("page", manage_orderList);

        return "adminManage";
    }

    @RequestMapping("manageClient")
    public String showClinet(@RequestParam(defaultValue="1")Integer page, @RequestParam(defaultValue="10")Integer rows,
                             String name, String email,	String address, String phone, Model model,HttpSession session){

        Page<Manage_Client> clientPage = clientService.selectManage_ClientList(page, rows,name,email,address,phone);

//        System.out.println();

        if(session.getAttribute("admin") == null)
            return "AdminLogin";

//        for(Manage_Feedback manage_order : manage_orderList.getRows()){
//            System.out.println(manage_order.toString());
//        }

        model.addAttribute("page", clientPage);

        return "clientManage";

    }

}

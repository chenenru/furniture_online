package com.web.controller;

import com.web.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName OrderManageController
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/10 23:31
 * @Version 1.0
 **/
@Controller
public class OrderManageController {

    @Autowired
    private OrderService orderService;


    @RequestMapping("/showOrderManage")
    public String showOrderManager(Model model){

        return "orderManage";
    }

}

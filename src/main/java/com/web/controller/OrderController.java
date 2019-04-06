package com.web.controller;

import com.web.pojo.TbOrder;
import com.web.pojo.TbOrderProperty;
import com.web.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @ClassName OrderController
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/4 9:14
 * @Version 1.0
 **/
@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private HttpSession session;

    @RequestMapping("/detail")
    public String showOrder(Model model , @RequestParam("order_id") int id){
//        TbOrder tbOrder = orderService.getTbOrderbyPrimaryKey(1);
//        model.addAttribute("orderMsg",tbOrder);

        System.out.println("Controller: id" + id );
        TbOrderProperty tbOrderProperty = orderService.getOrderProperty(id);
        model.addAttribute("orderProperty",tbOrderProperty);
        System.out.println(tbOrderProperty.toString());
        model.addAttribute("order_status",tbOrderProperty.getOrderStatus(tbOrderProperty.getoStatus()));
//        model.addAttribute("order_id",tbOrder.getId());
//        model.addAttribute("properties_id", tbOrder.getPrId());
//        model.addAttribute("order_number", tbOrder.getoNum());
//        model.addAttribute("order_total",tbOrder.getoTotal());
//        model.addAttribute("order_create",tbOrder.getoCreate());

        return "OrderDetail";
    }

    @RequestMapping("/all_list")
    public String showList(Model model){

        List<TbOrderProperty> tbOrderPropertyList = orderService.getOrderListbyUser(2);
        model.addAttribute("orderList",tbOrderPropertyList);

        //标记是以什么条件搜索订单
        model.addAttribute("order_page",0);


        return "OrderList";
    }

    @RequestMapping("/status_list")
    public String showStatus(Model model , @RequestParam("order_status")int order_status){


//        获取当前登陆的账号id
//        int userId = (int)session.getAttribute("userId") ;

        System.out.println(order_status);

        List<TbOrderProperty> tbOrderProperties = orderService.getOrderListbyStatus(2,order_status);

        model.addAttribute("orderList",tbOrderProperties);

//        标记此时是何种订单页面列表
//        int status = 0;
//        if(order_status == 1)
//            status = "create";
//        if(order_status == 2)
//            status = "pay";
//        if(order_status == 3)
//            status = "deliver";
//        if(order_status == 4)
//            status = "confirm";
//        if(order_status == 5)
//            status = "comment";

        model.addAttribute("order_page",order_status);

        return "OrderList";

    }


}

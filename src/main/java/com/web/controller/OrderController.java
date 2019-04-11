package com.web.controller;

import com.web.pojo.TbClient;
import com.web.pojo.TbOrderProperty;
import com.web.pojo.TbProductProperty;
import com.web.service.OrderService;
import com.web.service.ProductOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
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
    private ProductOrderService productOrderService;

    public String remove(Model model, @RequestParam("o_id")int o_id,@RequestParam("pr_id")int pr_id,HttpSession session){

        TbClient tbClient = (TbClient) session.getAttribute("user");
        if(tbClient == null){
            model.addAttribute("error",2);
            return "error";
        }

        TbProductProperty tbProductProperty =
                productOrderService.selectProductOrderByClientOrderProproty(tbClient.getId(),o_id,pr_id);

        productOrderService.removeProductOrderById(tbProductProperty.getId());

        orderService.removeOrderById(o_id);

        return "OrderList";
    }





    @RequestMapping("/detail")
    @DateTimeFormat(pattern = "yyyy-MM-dd　HH:mm:ss")
    public String showOrder(Model model , @RequestParam("order_id") int id ,HttpSession session){
//        TbOrder tbOrder = orderService.getTbOrderbyPrimaryKey(1);
//        model.addAttribute("orderMsg",tbOrder);

        TbClient tbClient = (TbClient) session.getAttribute("user");
        if(tbClient == null){
            model.addAttribute("error",2);
            return "error";
        }

        System.out.println("Controller: id" + id );
        TbOrderProperty tbOrderProperty = orderService.getOrderProperty(id);
        System.out.println(tbOrderProperty.toString());

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
    public String showList(Model model,HttpSession session){

        TbClient client = (TbClient)session.getAttribute("user");
        List<TbOrderProperty> tbOrderPropertyList = orderService.getOrderListbyUser(client.getId());
        model.addAttribute("orderList",tbOrderPropertyList);

        //标记是以什么条件搜索订单
        model.addAttribute("order_page",0);


        return "OrderList";
    }

    @RequestMapping("/status_list")
    public String showStatus(Model model , @RequestParam("order_status")int order_status ,HttpSession session){



//        获取当前登陆的账号id
//        int userId = (int)session.getAttribute("userId") ;

        System.out.println(order_status);
        TbClient client = (TbClient) session.getAttribute("user");
        if(client == null){
            model.addAttribute("error",2);
            return "error";
        }
        List<TbOrderProperty> tbOrderProperties = orderService.getOrderListbyStatus(client.getId(),order_status);

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

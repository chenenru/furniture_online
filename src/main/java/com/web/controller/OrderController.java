package com.web.controller;

import com.web.pojo.*;
import com.web.service.OrderService;
import com.web.service.ProductOrderService;
import com.web.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
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

    @Autowired
    private PropertyService propertyService;




    @RequestMapping("updateOrder")
    public String updateOrder(TbOrder tbOrder){
        System.out.println("更新的订单" + tbOrder);

        orderService.updateOrder(tbOrder);

        return "orderManage";
    }

    @RequestMapping("/gotoOrder")
    @ResponseBody
    public TbOrder tbOrder(Integer id){
        TbOrder tbOrder = orderService.getTbOrderbyPrimaryKey(id);

        System.out.println("订单装换情况：：" + tbOrder);

        return tbOrder;

    }

    @RequestMapping("adminRemove")
    public String Admin_remove(HttpSession session,
           int o_id,int pr_id,int c_id){

        System.out.println("管理页面传来的ID" + o_id + "管理页面传来的ID" + pr_id + "管理页面传来的ID" + c_id);

        if(session.getAttribute("admin") == null){
            return "AdminLogin";
        }

        TbProductOrder tbProductOrder = productOrderService.selectProductOrderByClientOrderProproty(c_id,o_id,pr_id);
        TbProperty tbProperty = propertyService.selectPropertyById(tbProductOrder.getPrId());
        tbProperty.setPrStore(tbProperty.getPrStore() - tbProductOrder.getProNumber());
        propertyService.updateProperty(tbProperty);

        productOrderService.removeProductOrderById(tbProductOrder.getId());

        orderService.removeOrderById(o_id);

        return "orderManage";
    }

    @RequestMapping("clientRemove")
    public String remove(Model model, @RequestParam("o_id")int o_id,@RequestParam("pr_id")int pr_id,HttpSession session){

        TbClient tbClient = (TbClient) session.getAttribute("user");
        if(tbClient == null){
            model.addAttribute("error",2);
            return "error";
        }

        TbProductOrder tbProductOrder =
                productOrderService.selectProductOrderByClientOrderProproty(tbClient.getId(),o_id,pr_id);


        productOrderService.removeProductOrderById(tbProductOrder.getId());

        orderService.removeOrderById(o_id);

        TbProperty tbProperty = propertyService.selectPropertyById(tbProductOrder.getPrId());
        tbProperty.setPrStore(tbProperty.getPrStore() - tbProductOrder.getProNumber());
        propertyService.updateProperty(tbProperty);

        return "OrderList";
    }

    @RequestMapping("orderDeliver")
    public String orderDeliver(int o_id){

        System.out.println("测试发货操作#############" + o_id );

        TbOrder tbOrder = orderService.getTbOrderbyPrimaryKey(o_id);

        tbOrder.setoStatus(3);
        tbOrder.setoDeliver(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        orderService.updateOrder(tbOrder);

        return "orderManage";
    }

    @RequestMapping("orderConfirm")
    public String clintConfirm(int o_id){

        System.out.println("测试收货操作#############" + o_id );

        TbOrder tbOrder = orderService.getTbOrderbyPrimaryKey(o_id);

        tbOrder.setoStatus(4);
        tbOrder.setoConfirm(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        orderService.updateOrder(tbOrder);


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


        System.out.println(order_status);
        TbClient client = (TbClient) session.getAttribute("user");
        if(client == null){
            model.addAttribute("error",2);
            return "error";
        }
        List<TbOrderProperty> tbOrderProperties = orderService.getOrderListbyStatus(client.getId(),order_status);

        model.addAttribute("orderList",tbOrderProperties);

        model.addAttribute("order_page",order_status);

        return "OrderList";

    }


}

package com.web.controller;

import com.web.pojo.*;
import com.web.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * @ClassName OrderProductPropertyController
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/9 15:26
 * @Version 1.0
 **/
@Controller
public class OrderProductPropertyController {

    @Autowired
    ProductOrderService productOrderService;

    @Autowired
    ClientService clientService;

    @Autowired
    OrderService orderService;

    @Autowired
    PropertyService propertyService;

    @Autowired
    CartService cartService;

    @RequestMapping("test_cart")
    public String test(Model model){

//        for(TbProductProperty tbProductProperty : orderProductProperties.getProductProperties()){
//            System.out.println(tbProductProperty.toString());
//        }
        try{
            List<Cart> carts = this.cartService.getCart(2);
            model.addAttribute("Carts",carts);
            System.out.println(carts.get(0).getId()+"--"+carts.get(1).getId());
            model.addAttribute("productNum",1);
        }catch(Exception e){
            e.printStackTrace();
        }

        return "testOrder";
    }





    @RequestMapping("test_add_order")
    @DateTimeFormat(pattern = "yyyy-MM-dd　HH:mm:ss")
    @ResponseBody
    public void test_add_order(Model model ,@RequestBody List<OrderPay> orderPayList) {


        for(OrderPay orderPay : orderPayList){

            System.out.println(orderPay.toString()+"--------hhhhhhhh");

            TbProductOrder tbProductOrder = productOrderService.selectProductOrderById(orderPay.getId());

            TbClient tbClient = clientService.Service_findTbclientById(tbProductOrder.getcId());

            TbProperty tbProperty = propertyService.selectPropertyById(tbProductOrder.getPrId());

            TbOrder tbOrder = new TbOrder();
            tbOrder.setcId(tbClient.getId());
            tbOrder.setoAddress(tbClient.getcAddress());
            tbOrder.setoPhone(tbClient.getcPhone());
            tbOrder.setPrId(tbProductOrder.getPrId());
            tbOrder.setoCreate(new Date());
            tbOrder.setoNum(orderPay.getNum());
            tbOrder.setoStatus(0);
            tbOrder.setoTotal(tbProperty.getPrOutprice() * orderPay.getNum());

            orderService.insertOrder(tbOrder);

            tbOrder = orderService.selectOrderByStatus(tbProductOrder.getPrId(),tbClient.getId(),0);

            tbProductOrder.setoId(tbOrder.getId());

            tbProductOrder.setProNumber(orderPay.getNum());
            productOrderService.updateProductOrderById(tbProductOrder);
 
        }

    }

}

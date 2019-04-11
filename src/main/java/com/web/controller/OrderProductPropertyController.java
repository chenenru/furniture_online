package com.web.controller;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.web.pojo.*;
import com.web.service.*;
import com.web.utils.AlipayConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @ClassName OrderProductPropertyController
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/9 15:26
 * @Version 1.0
 **/

@Controller
public class OrderProductPropertyController {

    final static Logger log = LoggerFactory.getLogger(OrderProductPropertyController.class);

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

    @Autowired
    ProductService productService;

    @RequestMapping("test_cart")
    public String test(Model model){

//        for(TbProductProperty tbProductProperty : orderProductProperties.getProductProperties()){
//            System.out.println(tbProductProperty.toString());
//        }
        try{
            List<Cart> carts = this.cartService.getCart(2);
            model.addAttribute("Carts",carts);
            //System.out.println(carts.get(0).getId()+"--"+carts.get(1).getId());
            model.addAttribute("productNum",1);
        }catch(Exception e){
            e.printStackTrace();
        }

        return "testOrder";
    }





    @RequestMapping(value="test_add_order",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public List<OrderPay> test_add_order(HttpSession session,Model model, @RequestBody List<OrderPay> orderPayList) {


//        int i=0;
//        ModelAndView mv = new ModelAndView("goPay");

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
            tbOrder.setoStatus(1);

            tbProductOrder.setoId(tbOrder.getId());

            tbProductOrder.setProNumber(orderPay.getNum());

            productOrderService.updateProductOrderById(tbProductOrder);
            orderService.updateOrder(tbOrder);


            System.out.println("*******************" + tbProductOrder.toString());

            TbProduct tbProduct = productService.selectByPrimaryKey(tbProperty.getpId());

            System.out.println("*******************" + tbProduct.toString());



            /**
             * 别的页面需要
             * 订单编号: 1904106DSNRGYA80 tbOrder.getId()
             * 产品名称: 1 tbProduct.getpName()
             * 订单价格: 0.01 tbProperty.getPrOutprice() * orderPay.getNum()
             * 购买个数：1 orderPay.getNum()
             */

            /*model.addAttribute("tbProduct"+(i+1),tbProduct);
            model.addAttribute("tbOrder"+(i+1),tbOrder);
            model.addAttribute("tbProperty"+(i+1),tbProperty);
            model.addAttribute("tbClient"+(i+1),tbClient);
            model.addAttribute("tbProductOrder"+(i+1),tbProductOrder);
            model.addAttribute("orderPay"+(i+1),orderPay);*/
            //session.setAttribute();

            session.setAttribute("orderid",tbOrder.getId());
            session.setAttribute("productName",tbProduct.getpName());
            session.setAttribute("price",tbProperty.getPrOutprice() * orderPay.getNum());
            session.setAttribute("num",orderPay.getNum());


           /* mv.addObject("orderid",tbOrder.getId());
            mv.addObject("price",tbProperty.getPrOutprice() * orderPay.getNum());
            mv.addObject("num",orderPay.getNum());
            mv.addObject("num",orderPay.getNum());*/

        }
        return orderPayList;

    }
    /*@RequestMapping("/gopay")
    public String  ToGoPay(HttpServletRequest request,Model model){
       String orderId =request.getParameter("orderid");
        String productName = request.getParameter("productName");
        String price = request.getParameter("price");
        String num = request.getParameter("num");
        System.out.println(orderId+" "+productName+" "+price+" "+num);
        model.addAttribute("orderid",orderId);
        model.addAttribute("productName",productName);
        model.addAttribute("price",price);
        model.addAttribute("num",num);
        return "goPay";
    }*/


//    @RequestParam("orderid")Integer orderId,
//    @RequestParam("productName")String productName,
//    @RequestParam("price")Integer price,@RequestParam("num")Integer num ,


    @RequestMapping(value = "/goAlipay", produces = "text/html; charset=UTF-8",method ={ RequestMethod.POST,RequestMethod.GET} )
    @ResponseBody
    public String goAlipay(HttpSession session ) throws Exception {
//        System.out.println("========golipay的订单号："+orderId);
        Integer orderId= (Integer) session.getAttribute("orderid");
        String productName= (String) session.getAttribute("productName");
        Integer price= (Integer) session.getAttribute("price");
        Integer num = (Integer) session.getAttribute("num");

        System.out.println("========golipay的订单号："+orderId);
        System.out.println("========golipay的商品名称："+productName);
        System.out.println("========golipay的总价："+price);
        System.out.println("========golipay的数量："+num);

        /*TbOrder order = orderService.getTbOrderbyPrimaryKey(orderId);
        TbProperty tbProperty = propertyService.selectPropertyById(order.getPrId());
        TbProduct product = productService.selectByPrimaryKey(tbProperty.getpId());*/

        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = orderId.toString();
        //付款金额，必填
        String total_amount = "0.01";
        //订单名称，必填
        String subject = productName;
        //商品描述，可空
        String body = "用户订购商品个数：" + num;
        //商品名称
        //String pName=productName;

        // 该笔订单允许的最晚付款时间，逾期将关闭交易。取值范围：1m～15d。m-分钟，h-小时，d-天，1c-当天（1c-当天的情况下，无论交易何时创建，都在0点关闭）。 该参数数值不接受小数点， 如 1.5h，可转换为 90m。
        String timeout_express = "1c";

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
               /* + "\"pName\":\""+ pName +"\","*/
                + "\"timeout_express\":\""+ timeout_express +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

//        TbOrder tbOrderbyPrimaryKey = orderService.getTbOrderbyPrimaryKey(orderId);
//        System.out.println("##############################" + tbOrderbyPrimaryKey.toString());
//        tbOrderbyPrimaryKey.setoStatus(2);
//        tbOrderbyPrimaryKey.setoPay(new Date());
//        orderService.updateOrder(tbOrderbyPrimaryKey);
//
//        tbOrderbyPrimaryKey = orderService.getTbOrderbyPrimaryKey(orderId);
//        System.out.println("##############################" + tbOrderbyPrimaryKey.toString());

        //请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();

        System.out.println("---#@3444444444$$$$$$$$$$$$$$$$$$$" + alipayRequest.toString());
        System.out.println("---#@3444444444$$$$$$$$$$$$$$$$$$$" + result.toString());

        return result;
    }

    @RequestMapping(value = "/alipayReturnNotice")
    public ModelAndView alipayReturnNotice(HttpServletRequest request, HttpServletRequest response) throws Exception {

        System.out.println("get===============");
        log.info("支付成功, 进入同步通知接口...");

        //获取支付宝GET过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map<String,String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用
            valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }

        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

        ModelAndView mv = new ModelAndView("OrderList");
        //——请在这里编写您的程序（以下代码仅作参考）——
        if(signVerified) {
            //商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //支付宝交易号
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //付款金额
            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");

            //付款商品名
            //String pname = new String(request.getParameter("pName").getBytes("ISO-8859-1"),"UTF-8");

            // 修改叮当状态，改为 支付成功，已付款; 同时新增支付流水
            //orderService.updateOrderStatus(out_trade_no, trade_no, total_amount);


            TbOrder tbOrderbyPrimaryKey = orderService.getTbOrderbyPrimaryKey(Integer.valueOf(out_trade_no));
            System.out.println("##############################" + tbOrderbyPrimaryKey.toString());
            tbOrderbyPrimaryKey.setoStatus(2);
            tbOrderbyPrimaryKey.setoPay(new Date());
            orderService.updateOrder(tbOrderbyPrimaryKey);

            tbOrderbyPrimaryKey = orderService.getTbOrderbyPrimaryKey(Integer.valueOf(out_trade_no));
            System.out.println("##############################" + tbOrderbyPrimaryKey.toString());


            //要更新的是购物车id对应订单的o_id
            //1.已获得订单的id
            //2.


            //Orders order = orderService.getOrderById(out_trade_no);
            //Product product = productService.getProductById(order.getProductId());

            log.info("********************** 支付成功(支付宝同步通知) **********************");
            log.info("* 订单号: {}", out_trade_no);
            log.info("* 支付宝交易号: {}", trade_no);
            log.info("* 实付金额: {}", total_amount);
            //log.info("* 购买产品: {}", pname);
            log.info("***************************************************************");


            mv.addObject("out_trade_no", out_trade_no);
            mv.addObject("trade_no", trade_no);
            mv.addObject("total_amount", total_amount);
            //mv.addObject("productName", pname);

        }else {
            log.info("支付, 验签失败...");
        }

        return mv;
    }
    @RequestMapping(value = "/alipayNotifyNotice")
    @ResponseBody
    public String alipayNotifyNotice(HttpServletRequest request, HttpServletRequest response) throws Exception {

        log.info("支付成功, 进入异步通知接口...");
        System.out.println("post===============");

        //获取支付宝POST过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map<String,String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用
//			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }

        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

        //——请在这里编写您的程序（以下代码仅作参考）——

		/* 实际验证过程建议商户务必添加以下校验：
		1、需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
		2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
		3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email）
		4、验证app_id是否为该商户本身。
		*/
        if(signVerified) {//验证成功
            //商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //支付宝交易号
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //交易状态
            String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");

            //付款金额
            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");

            if(trade_status.equals("TRADE_FINISHED")){
                //判断该笔订单是否在商户网站中已经做过处理
                //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                //如果有做过处理，不执行商户的业务程序

                //注意： 尚自习的订单没有退款功能, 这个条件判断是进不来的, 所以此处不必写代码
                //退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
            }else if (trade_status.equals("TRADE_SUCCESS")){
                //判断该笔订单是否在商户网站中已经做过处理
                //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                //如果有做过处理，不执行商户的业务程序

                //注意：
                //付款完成后，支付宝系统发送该交易状态通知

                // 修改叮当状态，改为 支付成功，已付款; 同时新增支付流水
                //orderService.updateOrderStatus(out_trade_no, trade_no, total_amount);

               // Orders order = orderService.getOrderById(out_trade_no);
                //Product product = productService.getProductById(order.getProductId());

                log.info("********************** 支付成功(支付宝异步通知) **********************");
                log.info("* 订单号: {}", out_trade_no);
                log.info("* 支付宝交易号: {}", trade_no);
                log.info("* 实付金额: {}", total_amount);
               //log.info("* 购买产品: {}", product.getName());
                log.info("***************************************************************");
            }
            log.info("支付成功...");

        }else {//验证失败
            log.info("支付, 验签失败...");
        }

        return "success";
    }

}

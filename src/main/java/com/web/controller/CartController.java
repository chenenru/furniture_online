package com.web.controller;

import com.web.pojo.Cart;
import com.web.service.CartService;
import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/CartControl")
public class CartController {
    @Autowired
    private CartService cartService;

    //接受前台传来的删除购物车商品的id
//    @RequestMapping(params = "id")
    @RequestMapping("/remove")
    @ResponseBody
    public void getRemoveId(String removeId){
        System.out.println(removeId);
//        removeId = Integer.valueOf(request.getParameter("id"));
//        System.out.println(removeId);
        try{
            this.cartService.removeCart(Integer.valueOf(removeId));
        }catch (Exception e){
            e.printStackTrace();
        }
        return;
    }

    @RequestMapping("/Cart")
    public String getCart(Integer cid, Model model){
        try{
            List<Cart> carts = this.cartService.getCart(2);
            model.addAttribute("Carts",carts);
            int money = 0;
            for(int i=0; i<carts.size();i++){
                money+=carts.get(i).getTbProperty().getPrOutprice();
            }
            model.addAttribute("productNum",carts.size());
            model.addAttribute("money",money);
        }catch(Exception e){
            e.printStackTrace();
        }
        return "Cart";
    }
}
package com.web.controller;

import com.web.pojo.Cart;
import com.web.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CartController {
    private Integer removeId=null;
    @Autowired
    private CartService cartService;

    //接受前台传来的删除购物车商品的id
//    @RequestMapping(params = "id")
    @ResponseBody
    public String getRemoveId(HttpServletRequest request){
        removeId = Integer.valueOf(request.getParameter("id"));
        try{
            this.cartService.removeCart(removeId);

        }catch (Exception e){
            e.printStackTrace();
        }
        return "Cart";
    }

    @RequestMapping("/Cart")
    public String getCart(Integer cid, Model model){
        try{
            List<Cart> carts = this.cartService.getCart(2);
            model.addAttribute("Carts",carts);
            System.out.println(carts.get(0).getId()+"--"+carts.get(1).getId());
            model.addAttribute("productNum",1);
        }catch(Exception e){
            e.printStackTrace();
        }
        return "Cart";
    }
}

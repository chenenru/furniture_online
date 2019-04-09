package com.web.controller;

import com.web.pojo.Cart;
import com.web.pojo.TbClient;
import com.web.service.CartService;
import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/")
public class CartController {
    @Autowired
    private CartService cartService;

    //接受前台传来的删除购物车商品的id
//    @RequestMapping(params = "id")
    @RequestMapping("/remove")
    @ResponseBody
    public void getRemoveId(String removeId, int money, int number, int price){
        System.out.println(removeId);
        try{
            this.cartService.removeCart(Integer.valueOf(removeId));
//            this.money = money-number*price;
        }catch (Exception e){
            e.printStackTrace();
        }
        return;
    }

    @RequestMapping("/Cart")
    public String getCart(HttpServletRequest request, Model model){
        try{
            HttpSession session = request.getSession();
            TbClient tbClient = (TbClient)session.getAttribute("user");
            int money = 0;
            List<Cart> carts = null;
//            tbClient.getId()
            carts = this.cartService.getCart(2);
            model.addAttribute("Carts",carts);
            System.out.println(carts.size());
            for(int i=0; i<carts.size();i++){
                money+=carts.get(i).getTbProperty().getPrOutprice()*carts.get(i).getProNumber();
            }
            System.out.println("money==="+money);
            model.addAttribute("productNum",carts.size());
            model.addAttribute("money",money);
        }catch(Exception e){
            e.printStackTrace();
        }
        return "Cart";
    }
}

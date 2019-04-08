package com.web.controller;

import com.web.pojo.ProductDetail;
import com.web.pojo.TbComment;
import com.web.pojo.TbProductOrder;
import com.web.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/")
public class ProductDetailController {
    @Autowired
    private ProductDetailService productDetailService;

    @ResponseBody
    @RequestMapping("/addProductDetail")
    public void add(int addPid, int addCid, int addProNumber){
        try{
            TbProductOrder tbProductOrder = new TbProductOrder();
            tbProductOrder.setPrId(addPid);
            tbProductOrder.setcId(addCid);
            tbProductOrder.setProNumber(addProNumber);
            this.productDetailService.addProductDetail(tbProductOrder);
            System.out.println("客户ID："+tbProductOrder.getcId());
            System.out.println(tbProductOrder.getPrId());
            System.out.println(tbProductOrder.getProNumber());
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequestMapping("ProductDetail")
    public String findProductDetailById(Integer id,Model model){
        ProductDetail productDetail = this.productDetailService.getProductDetailById(1);
        List<TbComment> comments = this.productDetailService.getComment(1);
        System.out.println("评论是======="+comments);
        model.addAttribute("ProductDetail",productDetail);
        model.addAttribute("comments",comments);
//        System.out.println("评论是======="+comments.get(0).getTbComment().getCo_info());
        return "ProductDetail";
    }
}

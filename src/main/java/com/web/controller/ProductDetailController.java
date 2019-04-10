package com.web.controller;

import com.web.pojo.CommentProperty;
import com.web.pojo.ProductDetail;
import com.web.pojo.TbProductOrder;
import com.web.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String findProductDetailById(@RequestParam(value = "pr_id",defaultValue = "-1") Integer id, Model model){
        //如果前台没有传参数到后台，则报错
        if(id == -1)
            return "error";
        ProductDetail productDetail = this.productDetailService.getProductDetailById(id);
        List<CommentProperty> commentProperties = productDetailService.getCommentListByPropertyId(1);
//        System.out.println("评论是======="+comments);
        model.addAttribute("ProductDetail",productDetail);
        model.addAttribute("comments",commentProperties);
        for(CommentProperty commentProperty : commentProperties)
            System.out.println(commentProperty.toString());
//        System.out.println("评论是======="+comments.get(0).getTbComment().getCo_info());
        return "ProductDetail";
    }

}

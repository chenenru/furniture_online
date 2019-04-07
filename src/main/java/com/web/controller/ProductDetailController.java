package com.web.controller;

import com.web.pojo.ProductDetail;
import com.web.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductDetailController {
    @Autowired
    private ProductDetailService productDetailService;

    @RequestMapping("ProductDetail")
    public String findProductDetailById(Integer id, Model model){
        ProductDetail productDetail = this.productDetailService.getProductDetailById(1);
        model.addAttribute("ProductDetail",productDetail);
        System.out.println("单价="+productDetail.getTbProperty().getPrOutprice());
        return "ProductDetail";
    }
}

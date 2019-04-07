package com.web.controller;

import com.web.pojo.TbProduct;
import com.web.service.ProductService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@SuppressWarnings("ALL")
@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
//    @Autowired
//    private PropertyService propertyService;
    /*
        *显示商品信息
     */
    @Test
    @RequestMapping("Product")
    public String findTbProductById(Integer id, Model model){
        TbProduct product = this.productService.selectByPrimaryKey(1);
//        TbProperty property = this.propertyService.selectPropertyById(1);
        model.addAttribute("product",product);
//        model.addAttribute("property",property);
        System.out.println("商品ID："+product.getId());
        System.out.println("商品名："+product.getpName());
        System.out.println("商品类型："+product.getpType());
        System.out.println("商品简介："+product.getpIntro());
        return "Product";
    }
}

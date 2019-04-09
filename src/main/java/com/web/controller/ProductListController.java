package com.web.controller;

import com.web.pojo.TbProductProperty;
import com.web.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @ClassName ProductListController
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/8 22:20
 * @Version 1.0
 **/
@Controller
//@RequestMapping("")
public class ProductListController {

    @Autowired
    ProductService productService;

    @RequestMapping("selectProduct")
    public String selectProductByName(Model model, @RequestParam("name")String name){
        List<TbProductProperty> productPropertyList = productService.selectProductByName(name);
        model.addAttribute("productList",productPropertyList);

        for(TbProductProperty productProperty : productPropertyList)
            System.out.println(productProperty.toString());

        return "ProductList";
    }

}

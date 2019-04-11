package com.web.controller;

import com.web.pojo.CommentProperty;
import com.web.pojo.ProductDetail;
import com.web.pojo.TbProductOrder;
import com.web.pojo.TbProductProperty;
import com.web.service.ProductDetailService;
import com.web.service.impl.ProductDetailServiceImpl;
import com.web.utils.Page;
import com.web.utils.PageTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/")
public class ProductDetailController {
    PageTag pageTag = new PageTag();

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

        System.out.println(productDetail.toString());

        List<CommentProperty> commentProperties = productDetailService.getCommentListByPropertyId(id);
        model.addAttribute("ProductDetail",productDetail);
        model.addAttribute("comments",commentProperties);
        for(CommentProperty commentProperty : commentProperties)
            System.out.println(commentProperty.toString());
        return "ProductDetail";
    }

    @RequestMapping("ProductManage")
    public String getProductManage(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "10")Integer row,@RequestParam(defaultValue = "") String productName, Model model){
        try{
            System.out.println("民资======"+productName);
            Page<ProductDetail> productDetailPage = this.productDetailService.findProductList(page,row,productName);
            model.addAttribute("page",productDetailPage);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "ProductManage";
    }

    @RequestMapping("editProductManage")
    @ResponseBody
    public TbProductProperty getProductManageById(Integer id){
        TbProductProperty tbProductProperty = this.productDetailService.editProductManage(id);
        System.out.println(tbProductProperty.getpName());
        return tbProductProperty;
    }

    @RequestMapping("UpdateProductManage")
    @ResponseBody
    public TbProductProperty updateProductManage(TbProductProperty tbProductProperty){
//        TbProductProperty tbProductProperty = new TbProductProperty();
        this.productDetailService.updateProductManage(tbProductProperty);
        return tbProductProperty;
    }

}

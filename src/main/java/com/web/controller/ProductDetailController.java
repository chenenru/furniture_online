package com.web.controller;

import com.web.pojo.*;
import com.web.service.CommentService;
import com.web.service.ProductDetailService;
import com.web.utils.Page;
import com.web.utils.PageTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/")
public class ProductDetailController {
    PageTag pageTag = new PageTag();

    @Autowired
    private ProductDetailService productDetailService;

    @Autowired
    private CommentService commentService;


    @RequestMapping("/setcomment")
    @ResponseBody
    public TbComment getComment(HttpSession session, @RequestBody TbComment tbComment, Integer pr_id){
        //TbProperty tbProperty = propertyService.selectPropertyById(pr_id);
        //CommentService.
        //System.out.println("=================pr_id"+pr_id);
        TbClient tbClient = (TbClient) session.getAttribute("user");
        System.out.println("pr_id======="+tbComment.getCo_info());
        //TbComment tbComment = new TbComment();
        tbComment.setC_id(tbClient.getId());
        tbComment.setCo_date(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        tbComment.setPr_id(pr_id);
        System.out.println("=========="+tbComment);
        commentService.insertComment(tbComment);
        return tbComment;
    }

    @ResponseBody
    @RequestMapping("/addProductDetail")
    public void add(int addPid, int addCid, int addProNumber,HttpSession session){

        if(session.getAttribute("user") == null)
            return "Login";

        try{
            TbProductOrder tbProductOrder = new TbProductOrder();
            TbClient tbClient = (TbClient) session.getAttribute("user");
            tbProductOrder.setPrId(addPid);
            tbProductOrder.setcId(tbClient.getId() );
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
//        System.out.println("评论是======="+comments);
        model.addAttribute("ProductDetail",productDetail);
        model.addAttribute("comments",commentProperties);
        for(CommentProperty commentProperty : commentProperties)
            System.out.println(commentProperty.toString());
//        System.out.println("评论是======="+comments.get(0).getTbComment().getCo_info());
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

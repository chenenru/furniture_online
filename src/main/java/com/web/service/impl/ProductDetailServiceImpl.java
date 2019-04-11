package com.web.service.impl;

import com.web.mapper.ProductDetailMapper;
import com.web.pojo.*;
import com.web.service.ProductDetailService;
import com.web.utils.Page;
import com.web.utils.PageTag;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("ALL")
@Service
public class ProductDetailServiceImpl implements ProductDetailService {
    @Autowired
    private ProductDetailMapper productDetailMapper;

    @Override
    public ProductDetail getProductDetailById(Integer id) {
        ProductDetail productDetail = this.productDetailMapper.getProductDetail(id);
        return productDetail;
    }

    @Override
    public void addProductDetail(TbProductOrder tbProductOrder) {
        try{
            this.productDetailMapper.addProductDetail(tbProductOrder);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public List<CommentProperty> getCommentListByPropertyId(Integer id) {
        List<CommentProperty> commentProperties = productDetailMapper.getCommentListByPropertyId(id);
        return commentProperties;
    }

//    @Override
//    public List<ProductDetail> getProductManage(ProductDetail productDetail) {
//        List<ProductDetail> tbProductProperties = this.productDetailMapper.getProductManage(productDetail);
//        return tbProductProperties;
//    }

    @Override
    public Page<ProductDetail> findProductList(Integer page, Integer row, String name) {
        ProductDetail productDetail = new ProductDetail();
        if (name!=null){
            productDetail.setName(name);
        }
        productDetail.setStart((page-1)*row);
        productDetail.setRows(row);
        List<ProductDetail> products = this.productDetailMapper.getProductManage(productDetail);
        Integer count = this.productDetailMapper.getProductCount(productDetail);
        Page<ProductDetail> result = new Page<>();
        result.setPage(page);
        result.setRows(products);
        result.setSize(row);
        result.setTotal(count);
        return result;
    }

    @Override
    public void updateProductManage(TbProductProperty tbProductProperty) {
        System.out.println("service"+tbProductProperty.getId());
        System.out.println("service"+tbProductProperty.getPrSize());
        this.productDetailMapper.updateProductManage(tbProductProperty);
    }

    @Override
    public TbProductProperty editProductManage(Integer id) {
//        System.out.println("service"+id);
        TbProductProperty tbProductProperty = this.productDetailMapper.editProductManage(id);
        return tbProductProperty;
    }


    @Override
    public List<TbComment> getComment(Integer pr_id) {
        List<TbComment> comments = null;
        try {
            comments = this.productDetailMapper.getComment(pr_id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return comments;
    }
}

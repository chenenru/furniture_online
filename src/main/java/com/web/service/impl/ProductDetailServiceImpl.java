package com.web.service.impl;

import com.web.mapper.ProductDetailMapper;
import com.web.pojo.CommentProperty;
import com.web.pojo.ProductDetail;
import com.web.pojo.TbComment;
import com.web.pojo.TbProductOrder;
import com.web.service.ProductDetailService;
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
        ProductDetail productDetail = this.productDetailMapper.getProductDetail(1);
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

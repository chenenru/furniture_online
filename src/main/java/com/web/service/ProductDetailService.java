package com.web.service;

import com.web.pojo.*;
import com.web.utils.Page;
import com.web.utils.PageTag;

import java.util.List;

public interface ProductDetailService {
    public ProductDetail getProductDetailById(Integer id);
    public void addProductDetail(TbProductOrder tbProductOrder);
    public List<TbComment> getComment(Integer pr_id);

    public List<CommentProperty> getCommentListByPropertyId(Integer id);
//    public List<ProductDetail> getProductManage(Integer start,Integer end);
    //后台查询商品
    public Page<ProductDetail> findProductList(Integer page, Integer row, String name);
    public void updateProductManage(TbProductProperty tbProductProperty);
    public TbProductProperty editProductManage(Integer id);
}

package com.web.service;

import com.web.pojo.CommentProperty;
import com.web.pojo.ProductDetail;
import com.web.pojo.TbComment;
import com.web.pojo.TbProductOrder;

import java.util.List;

public interface ProductDetailService {
    public ProductDetail getProductDetailById(Integer id);
    public void addProductDetail(TbProductOrder tbProductOrder);
    public List<TbComment> getComment(Integer pr_id);

    public List<CommentProperty> getCommentListByPropertyId(Integer id);

}

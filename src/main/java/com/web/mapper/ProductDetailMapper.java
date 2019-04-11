package com.web.mapper;

import com.web.pojo.*;
import com.web.utils.PageTag;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDetailMapper {
    ProductDetail getProductDetail(@Param("id") Integer id);
    void addProductDetail(TbProductOrder tbProductOrder);
    List<TbComment> getComment(Integer pr_id);
    List<CommentProperty> getCommentListByPropertyId(@Param("id") Integer id);
    List<ProductDetail> getProductManage(ProductDetail productDetail);
    int getProductCount(ProductDetail productDetail);
    void updateProductManage(TbProductProperty tbProductProperty);
    TbProductProperty editProductManage(@Param("id") Integer id);
}
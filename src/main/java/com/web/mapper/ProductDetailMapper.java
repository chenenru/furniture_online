package com.web.mapper;

import com.web.pojo.CommentProperty;
import com.web.pojo.ProductDetail;
import com.web.pojo.TbComment;
import com.web.pojo.TbProductOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDetailMapper {
    ProductDetail getProductDetail(@Param("id") Integer id);
    void addProductDetail(TbProductOrder tbProductOrder);
    List<TbComment> getComment(Integer pr_id);

    List<CommentProperty> getCommentListByPropertyId(@Param("id") Integer id);
}

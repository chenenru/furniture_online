package com.web.mapper;

import com.web.pojo.ProductDetail;
import com.web.pojo.TbComment;
import com.web.pojo.TbProductOrder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDetailMapper {
    ProductDetail getProductDetail(Integer id);
    void addProductDetail(TbProductOrder tbProductOrder);
    List<TbComment> getComment(Integer pr_id);
}

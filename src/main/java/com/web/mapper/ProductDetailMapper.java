package com.web.mapper;

import com.web.pojo.ProductDetail;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDetailMapper {
    ProductDetail getProductDetail(Integer id);
}

package com.web.service.impl;

import com.web.mapper.ProductDetailMapper;
import com.web.pojo.ProductDetail;
import com.web.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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
}

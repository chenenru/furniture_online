package com.web.service.impl;

import com.web.mapper.TbProductMapper;
import com.web.pojo.TbProduct;
import com.web.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@SuppressWarnings("ALL")
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private TbProductMapper tbProductMapper;

    @Override
    public TbProduct selectByPrimaryKey(Integer id) {
        TbProduct tbProduct = this.tbProductMapper.selectByPrimaryKey(id);
        return tbProduct;
    }
}

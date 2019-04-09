package com.web.service.impl;

import com.web.mapper.TbProductMapper;
import com.web.pojo.TbProduct;
import com.web.pojo.TbProductProperty;
import com.web.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("ALL")
@Service
public class ProductServiceImpl implements ProductService {
    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    private TbProductMapper tbProductMapper;

    @Override
    public List<TbProductProperty> selectProductByName(String name) {
        String sql = "%" + name + "%";
        List<TbProductProperty> productPropertyList = tbProductMapper.selectProductByName(sql);

        return productPropertyList;
    }

    @Override
    public TbProduct selectByPrimaryKey(Integer id) {
        TbProduct tbProduct = this.tbProductMapper.selectByPrimaryKey(id);
        return tbProduct;
    }
}

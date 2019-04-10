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
    public List<TbProductProperty> selectProductByType(String type) {
        List<TbProductProperty> tbProductProperties = tbProductMapper.selectProductByType(type);
        return  tbProductProperties;
    }

    @Override
    public List<TbProductProperty> selectProductPropertyOfAll() {
        return tbProductMapper.selectProductPropertyOfAll();
    }

    @Override
    public List<TbProduct> selectProductOfAll() {
        return tbProductMapper.selectProductOfAll();
    }

    @Override
    public void removeProductById(Integer id) {
        tbProductMapper.deleteByPrimaryKey(id);

    }

    @Override
    public void insertProduct(TbProduct tbProduct) {
        tbProductMapper.insertSelective(tbProduct);

    }

    @Override
    public void updateProductById(TbProduct tbProduct) {
        tbProductMapper.updateByPrimaryKeySelective(tbProduct);
    }

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

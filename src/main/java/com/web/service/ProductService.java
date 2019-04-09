package com.web.service;

import com.web.pojo.TbProduct;
import com.web.pojo.TbProductProperty;

import java.util.List;


public interface ProductService {
    /*
    *根据id查询商品
     */
    TbProduct selectByPrimaryKey(Integer id);


    //根据商品名模糊搜索
    List<TbProductProperty> selectProductByName(String name);
}

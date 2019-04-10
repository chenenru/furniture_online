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

    //根据商品类型搜索
    List<TbProductProperty> selectProductByType(String type);

    List<TbProduct> selectProductOfAll();

    List<TbProductProperty> selectProductPropertyOfAll();

//    通过产品id删除对应的产品记录
    void removeProductById(Integer id);

//    增加产品记录
    void insertProduct(TbProduct tbProduct);

    //更新对应产品记录的信息 tbproduct对象为新信息记录
    void updateProductById(TbProduct tbProduct);

}

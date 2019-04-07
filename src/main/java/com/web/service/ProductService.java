package com.web.service;

import com.web.pojo.TbProduct;
import org.springframework.stereotype.Service;


public interface ProductService {
    /*
    *根据id查询商品
     */
    TbProduct selectByPrimaryKey(Integer id);
}

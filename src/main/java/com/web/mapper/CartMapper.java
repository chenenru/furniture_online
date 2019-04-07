package com.web.mapper;

import com.web.pojo.Cart;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartMapper {
    //获取购物车内商品信息
   List<Cart> getCart(Integer cid);
    //根据id删除购物车内商品
    void removeCart(Integer id);
}

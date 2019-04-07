package com.web.service;

import com.web.pojo.Cart;

import java.util.List;

public interface CartService {
    //获取购物车商品
    List<Cart> getCart(Integer cid);
    //删除购物车商品
    void removeCart(Integer id);
}

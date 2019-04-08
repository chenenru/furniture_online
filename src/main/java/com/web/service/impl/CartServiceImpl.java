package com.web.service.impl;

import com.web.mapper.CartMapper;
import com.web.pojo.Cart;
import com.web.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@SuppressWarnings("ALL")
@Service
public class CartServiceImpl implements CartService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    private CartMapper cartMapper;
    //获取购物车商品
    @Override
    public List<Cart> getCart(Integer cid) {
        List<Cart> carts = this.cartMapper.getCart(2);
        return carts;
    }
    //删除购物车商品
    @Override
    public void removeCart(Integer id) {
        this.cartMapper.removeCart(id);
        return ;
    }
}

package com.web.service;

import com.web.pojo.TbProductOrder;
import com.web.pojo.TbProductProperty;

public interface ProductOrderService {

    public TbProductOrder selectProductOrderById(Integer id);

    public void updateProductOrderById(TbProductOrder tbProductOrder);

    public TbProductProperty selectProductOrderByClientOrderProproty(Integer c_id, Integer o_id, Integer pr_id);

    void removeProductOrderById(Integer id);
}

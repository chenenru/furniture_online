package com.web.service;

import com.web.pojo.TbProductOrder;

public interface ProductOrderService {

    public TbProductOrder selectProductOrderById(Integer id);

    public void updateProductOrderById(TbProductOrder tbProductOrder);

    public TbProductOrder selectProductOrderByClientOrderProproty(Integer c_id, Integer o_id, Integer pr_id);

    void removeProductOrderById(Integer id);
}

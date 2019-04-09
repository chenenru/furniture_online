package com.web.service;

import com.web.pojo.TbProductOrder;

public interface ProductOrderService {

    public TbProductOrder selectProductOrderById(Integer id);

    public void updateProductOrderById(TbProductOrder tbProductOrder);

}

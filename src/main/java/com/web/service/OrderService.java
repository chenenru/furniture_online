package com.web.service;

import com.web.pojo.TbOrder;
import com.web.pojo.TbOrderProperty;

import java.util.List;

public interface OrderService {

    public void insertOrder(TbOrder tbOrder);

    TbOrder getTbOrderbyPrimaryKey(int key);

    TbOrder selectOrderByStatus(Integer pr_id,Integer c_id,Integer status);

    TbOrderProperty getOrderProperty(int key);

    List<TbOrderProperty> getOrderListbyUser(int userId);

    List<TbOrderProperty> getOrderListbyStatus(int userId,int status);

}

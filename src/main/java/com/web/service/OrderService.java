package com.web.service;

import com.web.pojo.TbOrder;
import com.web.pojo.TbOrderProperty;

import java.util.List;

public interface OrderService {

    TbOrder getTbOrderbyPrimaryKey(int key);

    TbOrderProperty getOrderProperty(int key);

    List<TbOrderProperty> getOrderListbyUser(int userId);

    List<TbOrderProperty> getOrderListbyStatus(int userId,int status);

}

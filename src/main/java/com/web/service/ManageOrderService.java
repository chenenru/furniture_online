package com.web.service;

import com.web.pojo.Manage_Order;
import com.web.utils.Page;

public interface ManageOrderService {

    public Page<Manage_Order> selectManage_OrderList(Integer page, Integer rows, Integer type, Integer c_id);

//    public Manage_Order getManage_OrderById(int id);
//
//    public void updateManage_Order(Manage_Order customer);
//
//    public void deleteManage_Order(Long id);


}

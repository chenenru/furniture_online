package com.web.mapper;

import com.web.pojo.Manage_Order;

import java.util.List;

public interface ManageOrderMapper {

    List<Manage_Order> selectManage_OrderList(Manage_Order customer);
    Integer selectManage_OrderListCount(Manage_Order customer);

    //搜索未支付的订单
    List<Manage_Order> selectManage_OrderList1(Manage_Order customer);
    Integer selectManage_OrderListCount1(Manage_Order customer);

//    搜索未发货支付订单
    List<Manage_Order> selectManage_OrderList2(Manage_Order customer);
    Integer selectManage_OrderListCount2(Manage_Order customer);

//    搜索已发货订单
    List<Manage_Order> selectManage_OrderList3(Manage_Order customer);
    Integer selectManage_OrderListCount3(Manage_Order customer);

//    搜索已收获订单
    List<Manage_Order> selectManage_OrderList4(Manage_Order customer);
    Integer selectManage_OrderListCount4(Manage_Order customer);

//    Manage_Order getManage_OrderById(Long id);
//    void updateManage_Order(Manage_Order customer);
//    void deleteManage_Order(Long id);

}

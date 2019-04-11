package com.web.service.impl;

import com.web.mapper.ManageOrderMapper;
import com.web.pojo.Manage_Order;
import com.web.service.ManageOrderService;
import com.web.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ManageOrderServiceImpl
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/11 13:57
 * @Version 1.0
 **/
@SuppressWarnings("ALL")
@Service
public class ManageOrderServiceImpl implements ManageOrderService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    ManageOrderMapper manageOrderMapper;


    @Override
    public Page<Manage_Order> selectManage_OrderList(Integer page, Integer rows,Integer type,Integer c_id) {
        Manage_Order manage_order = new Manage_Order();

        //当前页
        manage_order.setStart((page-1) * rows) ;
        //每页数
        manage_order.setRows(rows);

        if(c_id != -1)
            manage_order.setcId(c_id);

        System.out.println(manage_order.toString());


        //查询客户列表

//        List<Manage_Order> manage_orders = manageOrderMapper.selectManage_OrderList(manage_order);


        List<Manage_Order> manage_orders = null;

        if(type == 0 ){
            manage_orders = manageOrderMapper.selectManage_OrderList(manage_order);
        }
        else if( type == 1){
            manage_orders = manageOrderMapper.selectManage_OrderList1(manage_order);
        }
        else if( type == 2){
            manage_orders = manageOrderMapper.selectManage_OrderList2(manage_order);
        }
        else if(type == 3){
            manage_orders = manageOrderMapper.selectManage_OrderList3(manage_order);
        }
        else{
            if( type == 4)
            manage_orders = manageOrderMapper.selectManage_OrderList4(manage_order);
        }

//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

//        for(Manage_Order manage_order1 : manage_orders)
//            System.out.println(manage_order1.toString());

        //查询客户列表总记录数
        Integer count = 0;

        if(type == 0 ){
            count = manageOrderMapper.selectManage_OrderListCount(manage_order);
        }
        else if( type == 1){
            count = manageOrderMapper.selectManage_OrderListCount1(manage_order);
        }
        else if( type == 2){
            count = manageOrderMapper.selectManage_OrderListCount2(manage_order);
        }
        else if(type == 3){
            count = manageOrderMapper.selectManage_OrderListCount3(manage_order);
        }
        else{
            if(type == 4)
            count = manageOrderMapper.selectManage_OrderListCount4(manage_order);
        }

        //创建Page返回对象
        Page<Manage_Order> result = new Page<>();

        result.setPage(page);
        result.setRows(manage_orders);
        result.setSize(rows);
        result.setTotal(count);

        return result;
    }
}

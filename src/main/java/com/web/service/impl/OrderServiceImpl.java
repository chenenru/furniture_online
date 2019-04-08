package com.web.service.impl;

import com.web.mapper.TbOrderMapper;
import com.web.pojo.TbOrder;
import com.web.pojo.TbOrderProperty;
import com.web.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName OrderServiceImpl
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/4 9:31
 * @Version 1.0
 **/
@SuppressWarnings("ALL")
@Service
public class OrderServiceImpl implements OrderService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    public TbOrderMapper tbOrderMapper;

    @Override
    public List<TbOrderProperty> getOrderListbyUser(int userId) {
        List<TbOrderProperty> tbOrderProperties = tbOrderMapper.getOrderListbyUser(userId);

        for(TbOrderProperty tbOrderProperty : tbOrderProperties)
            System.out.println(tbOrderProperty);

        return tbOrderProperties;
    }

    @Override
    public List<TbOrderProperty> getOrderListbyStatus(int userId,int status) {

        List<TbOrderProperty> tbOrderProperties = tbOrderMapper.getOrderListbyStatus(userId,status);

        for(TbOrderProperty tbOrderProperty : tbOrderProperties)
            System.out.println(tbOrderProperty.toString());

        return tbOrderProperties;

    }

    @Override
    public TbOrder getTbOrderbyPrimaryKey(int key) {
        TbOrder tbOrder = tbOrderMapper.selectByPrimaryKey(key);

        System.out.println(tbOrder.toString());


        return tbOrder;

    }

    @Override
    public TbOrderProperty getOrderProperty(int id) {

        TbOrderProperty tbOrderProperty = tbOrderMapper.getOrderProperty(id);

        System.out.println(tbOrderProperty.toString());

        return tbOrderProperty;
    }
}

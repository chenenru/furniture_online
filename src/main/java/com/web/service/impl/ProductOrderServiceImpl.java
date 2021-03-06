package com.web.service.impl;

import com.web.mapper.TbProductOrderMapper;
import com.web.pojo.TbProductOrder;
import com.web.service.ProductOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName ProductOrderServiceImpl
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/9 21:13
 * @Version 1.0
 **/
@SuppressWarnings("ALL")
@Service
public class ProductOrderServiceImpl implements ProductOrderService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    TbProductOrderMapper tbProductOrderMapper;

    @Override
    public TbProductOrder selectProductOrderById(Integer id) {

        TbProductOrder tbProductOrder = tbProductOrderMapper.selectByPrimaryKey(id);

        return tbProductOrder;
    }


    @Override
    public void updateProductOrderById(TbProductOrder tbProductOrder) {
        tbProductOrderMapper.updateByPrimaryKeySelective(tbProductOrder);

    }

    @Override
    public void removeProductOrderById(Integer id) {
        tbProductOrderMapper.deleteByPrimaryKey(id);
    }

    @Override
    public TbProductOrder selectProductOrderByClientOrderProproty(Integer c_id, Integer o_id, Integer pr_id) {
        TbProductOrder tbProductOrder = tbProductOrderMapper.selectProductOrderByClientOrderProproty(c_id, o_id, pr_id);

        return tbProductOrder;
    }
}

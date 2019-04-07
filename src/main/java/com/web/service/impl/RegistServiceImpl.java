package com.web.service.impl;

import com.web.mapper.TbClientMapper;
import com.web.pojo.TbClient;
import com.web.service.RegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author shkstart
 * @create 2019-04-03 21:59
 */
@SuppressWarnings("ALL")
@Service
public class RegistServiceImpl implements RegistService {

    /**
     *
     */
    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    public TbClientMapper tbClientMapper;

    @Override
    public void save(TbClient tbClient) throws Exception {
        tbClientMapper.insertSelective(tbClient);

    }

    @Override
    public TbClient findByCode(String code) throws Exception {
        TbClient tbClient = tbClientMapper.selectByCode(code);
        System.out.println("这是impl"+code+"=====================================");
        return tbClient;
    }

    @Override
    public void update(TbClient tbClient) throws Exception {
        tbClientMapper.updateByPrimaryKeySelective(tbClient);
    }
}

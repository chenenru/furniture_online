package com.web.service.impl;

import com.web.mapper.TbClientMapper;
import com.web.pojo.TbClient;
import com.web.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName ClientServiceImpl
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/8 17:18
 * @Version 1.0
 **/

@SuppressWarnings("ALL")
@Service
public class ClientServiceImpl implements ClientService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    public TbClientMapper tbClientMapper;

    @Override
    public TbClient ClientLogin(String email, String pwd) {
        TbClient tbClient = tbClientMapper.getClientByEmail(email,pwd);

        System.out.println(tbClient.toString());
        return tbClient;
    }

    @Override
    public TbClient Service_findTbclientById(Integer id) {
        TbClient tbClient = tbClientMapper.selectByPrimaryKey(id);
        return tbClient;
    }

    @Override
    public void Service_UpdateClient(TbClient tbClient) {

    }

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

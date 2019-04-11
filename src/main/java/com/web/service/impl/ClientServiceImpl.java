package com.web.service.impl;

import com.web.mapper.TbClientMapper;
import com.web.pojo.Manage_Client;
import com.web.pojo.TbClient;
import com.web.service.ClientService;
import com.web.utils.Page;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    public List<TbClient> selectClientOfAll() {
        return tbClientMapper.selectClientOfAll();
    }

    @Override
    public void removeClientById(int id) {
        tbClientMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Page<Manage_Client> selectManage_ClientList(
            Integer page, Integer rows, String name, String email, String address, String phone) {

        Manage_Client manage_feedback = new Manage_Client();

        //当前页
        manage_feedback.setStart((page-1) * rows) ;
        //每页数
        manage_feedback.setRows(rows);

        if(StringUtils.isNotBlank(name)){
            manage_feedback.setcName(name);
        }
        //判断客户信息来源
        if(StringUtils.isNotBlank(email)){
            manage_feedback.setcEmail(email);
        }
        //判断客户所属行业
        if(StringUtils.isNotBlank(address)){
            manage_feedback.setcAddress(address);
        }
        //判断客户级别
        if(StringUtils.isNotBlank(phone)){
            manage_feedback.setcPhone(phone);
        }

        System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$查询用户" + manage_feedback.toString());


        List<Manage_Client> manage_feedbacks = tbClientMapper.selectManage_ClientList(manage_feedback);


        //查询客户列表总记录数
        Integer count = tbClientMapper.selectManage_ClientListCount(manage_feedback);

        //创建Page返回对象
        Page<Manage_Client> result = new Page<>();

        result.setPage(page);
        result.setRows(manage_feedbacks);
        result.setSize(rows);
        result.setTotal(count);

        return result;
    }

    @Override
    public TbClient ClientLogin(String email, String pwd) {
        TbClient tbClient = tbClientMapper.getClientByEmail(email,pwd);

//        System.out.println(tbClient.toString());
        return tbClient;
    }

    @Override
    public TbClient Service_findTbclientById(Integer id) {
        TbClient tbClient = tbClientMapper.selectByPrimaryKey(id);
        return tbClient;
    }

    @Override
    public void Service_UpdateClient(TbClient tbClient) {
        tbClientMapper.updateByPrimaryKeySelective(tbClient);
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

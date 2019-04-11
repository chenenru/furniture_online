package com.web.service;

import com.web.pojo.Manage_Client;
import com.web.pojo.TbClient;
import com.web.utils.Page;

import java.util.List;

public interface ClientService {

    public TbClient Service_findTbclientById(Integer id);
    public  void Service_UpdateClient(TbClient tbClient);

    //保存注册数据
    void save(TbClient tbClient) throws Exception;
    //邮箱激活

    TbClient findByCode(String code) throws Exception;

    void update(TbClient tbClient) throws Exception;

    void removeClientById(int id);


    //实现登陆功能
    TbClient ClientLogin(String email,String pwd);


    List<TbClient> selectClientOfAll();

    public Page<Manage_Client> selectManage_ClientList(Integer page, Integer rows,
                                                       String name,String email,String address,String phone);

}

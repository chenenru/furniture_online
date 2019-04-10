package com.web.service;

import com.web.pojo.TbClient;

import java.util.List;

public interface ClientService {

    public TbClient Service_findTbclientById(Integer id);
    public  void Service_UpdateClient(TbClient tbClient);

    //保存注册数据
    void save(TbClient tbClient) throws Exception;
    //邮箱激活

    TbClient findByCode(String code) throws Exception;

    void update(TbClient tbClient) throws Exception;


    //实现登陆功能
    TbClient ClientLogin(String email,String pwd);


    List<TbClient> selectClientOfAll();


}

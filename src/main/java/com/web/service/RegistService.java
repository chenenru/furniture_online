package com.web.service;

import com.web.pojo.TbClient;

/**
 * @author shkstart
 * @create 2019-04-03 21:57
 */
public interface RegistService {
    //保存注册数据
    void save(TbClient tbClient) throws Exception;
    //邮箱激活

    TbClient findByCode(String code) throws Exception;

    void update(TbClient tbClient) throws Exception;
}

package com.web.service;

import com.web.pojo.TbClient;

/**
 * @author shkstart
 * @create 2019-04-02 11:44
 */
public interface InfoService {
    public TbClient Service_findTbclientById(Integer id);
    public  void Service_UpdateClient(TbClient tbClient);
}

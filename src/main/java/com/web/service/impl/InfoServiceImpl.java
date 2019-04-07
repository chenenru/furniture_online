package com.web.service.impl;

import com.web.mapper.TbClientMapper;
import com.web.pojo.TbClient;
import com.web.pojo.TbClientExample;
import com.web.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author shkstart
 * @create 2019-04-02 11:45
 */

@SuppressWarnings("ALL")
@Service
public class InfoServiceImpl implements InfoService {


    /**
     *
     */
    @Autowired
    public TbClientMapper tbClientMapper;


    @Override
    public TbClient Service_findTbclientById(Integer id) {
        TbClient tbClient = tbClientMapper.selectByPrimaryKey(id);
        return tbClient;
    }
}

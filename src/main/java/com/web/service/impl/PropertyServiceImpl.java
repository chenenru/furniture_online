package com.web.service.impl;

import com.web.mapper.TbPropertyMapper;
import com.web.pojo.TbProperty;
import com.web.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName PropertyServiceImpl
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/9 21:57
 * @Version 1.0
 **/
@SuppressWarnings("ALL")
@Service
public class PropertyServiceImpl implements PropertyService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    TbPropertyMapper tbPropertyMapper;

    @Override
    public TbProperty selectPropertyById(Integer id) {
        TbProperty tbProperty = tbPropertyMapper.selectByPrimaryKey(id);

        return  tbProperty;
    }
}

package com.web.mapper;

import com.web.pojo.TbClient;

public interface TbClientMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbClient record);

    int insertSelective(TbClient record);

    TbClient selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbClient record);

    int updateByPrimaryKey(TbClient record);
}
package com.web.mapper;

import com.web.pojo.TbProperty;

public interface TbPropertyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbProperty record);

    int insertSelective(TbProperty record);

    TbProperty selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbProperty record);

    int updateByPrimaryKey(TbProperty record);
}
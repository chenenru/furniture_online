package com.web.mapper;

import com.web.pojo.TbProductOrder;
import com.web.pojo.TbProductOrderExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbProductOrderMapper {
    int countByExample(TbProductOrderExample example);

    int deleteByExample(TbProductOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbProductOrder record);

    int insertSelective(TbProductOrder record);

    List<TbProductOrder> selectByExample(TbProductOrderExample example);

    TbProductOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbProductOrder record, @Param("example") TbProductOrderExample example);

    int updateByExample(@Param("record") TbProductOrder record, @Param("example") TbProductOrderExample example);

    int updateByPrimaryKeySelective(TbProductOrder record);

    int updateByPrimaryKey(TbProductOrder record);
}
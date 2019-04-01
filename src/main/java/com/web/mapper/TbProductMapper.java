package com.web.mapper;

import com.web.pojo.TbProduct;
import com.web.pojo.TbProductExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbProductMapper {
    int countByExample(TbProductExample example);

    int deleteByExample(TbProductExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbProduct record);

    int insertSelective(TbProduct record);

    List<TbProduct> selectByExample(TbProductExample example);

    TbProduct selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbProduct record, @Param("example") TbProductExample example);

    int updateByExample(@Param("record") TbProduct record, @Param("example") TbProductExample example);

    int updateByPrimaryKeySelective(TbProduct record);

    int updateByPrimaryKey(TbProduct record);
}
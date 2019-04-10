package com.web.mapper;

import com.web.pojo.TbProductOrder;
import com.web.pojo.TbProductOrderExample;
import com.web.pojo.TbProductProperty;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbProductOrderMapper {
    int countByExample(TbProductOrderExample example);

    int deleteByExample(TbProductOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbProductOrder record);

    int insertSelective(TbProductOrder record);

    TbProductProperty selectProductOrderByClientOrderProproty(@Param("c_id") Integer c_id, @Param("o_id")Integer o_id, @Param("pr_id") Integer pr_id);

    List<TbProductOrder> selectByExample(TbProductOrderExample example);

    TbProductOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbProductOrder record, @Param("example") TbProductOrderExample example);

    int updateByExample(@Param("record") TbProductOrder record, @Param("example") TbProductOrderExample example);

    int updateByPrimaryKeySelective(TbProductOrder record);

    int updateByPrimaryKey(TbProductOrder record);
}
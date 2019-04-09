package com.web.mapper;

import com.web.pojo.TbOrder;
import com.web.pojo.TbOrderExample;
import com.web.pojo.TbOrderProperty;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbOrderMapper {
    int countByExample(TbOrderExample example);

    int deleteByExample(TbOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbOrder record);

    int insertSelective(TbOrder record);

    List<TbOrder> selectByExample(TbOrderExample example);

    TbOrder selectOrderByStatus(@Param("pr_id") Integer pr_id,@Param("c_id") Integer c_id,@Param("status") Integer status);

    TbOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbOrder record, @Param("example") TbOrderExample example);

    int updateByExample(@Param("record") TbOrder record, @Param("example") TbOrderExample example);

    int updateByPrimaryKeySelective(TbOrder record);

    int updateByPrimaryKey(TbOrder record);

    TbOrderProperty getOrderProperty(Integer i);

    List<TbOrderProperty> getOrderListbyUser(int userId);

    List<TbOrderProperty> getOrderListbyStatus(@Param("userId")int userId, @Param("status")int status);


}
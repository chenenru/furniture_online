package com.web.mapper;

import com.web.pojo.TbClient;
import com.web.pojo.TbClientExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbClientMapper {
    int countByExample(TbClientExample example);

    int deleteByExample(TbClientExample example);

    int deleteByPrimaryKey(Integer id);

    boolean insert(TbClient record);

    int insertSelective(TbClient record);

    List<TbClient> selectByExample(TbClientExample example);

    List<TbClient> selectClientOfAll();

    TbClient selectByPrimaryKey(Integer id);

    //登录
    TbClient getClientByEmail(@Param("email")String email , @Param("pwd")String pwd);

    int updateByExampleSelective(@Param("record") TbClient record, @Param("example") TbClientExample example);

    int updateByExample(@Param("record") TbClient record, @Param("example") TbClientExample example);

    int updateByPrimaryKeySelective(TbClient record);

    int updateByPrimaryKey(TbClient record);
    TbClient selectByCode(String code);

    TbClient get(String email);
}
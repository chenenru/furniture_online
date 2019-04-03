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

    TbClient selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbClient record, @Param("example") TbClientExample example);

    int updateByExample(@Param("record") TbClient record, @Param("example") TbClientExample example);

    int updateByPrimaryKeySelective(TbClient record);

    int updateByPrimaryKey(TbClient record);
}
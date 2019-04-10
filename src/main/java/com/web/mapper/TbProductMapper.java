package com.web.mapper;

import com.web.pojo.TbProduct;
import com.web.pojo.TbProductExample;
import com.web.pojo.TbProductProperty;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbProductMapper {
    int countByExample(TbProductExample example);

    int deleteByExample(TbProductExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbProduct record);

    int insertSelective(TbProduct record);

    List<TbProduct> selectByExample(TbProductExample example);

    List<TbProductProperty> selectProductByName(@Param("name")String name);

    List<TbProductProperty> selectProductByType(@Param("type")String type);

    List<TbProduct> selectProductOfAll();

    List<TbProductProperty> selectProductPropertyOfAll();

    //根据id查询商品信息
    TbProduct selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbProduct record, @Param("example") TbProductExample example);

    int updateByExample(@Param("record") TbProduct record, @Param("example") TbProductExample example);

    int updateByPrimaryKeySelective(TbProduct record);

    int updateByPrimaryKey(TbProduct record);

}
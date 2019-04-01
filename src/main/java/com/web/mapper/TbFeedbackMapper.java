package com.web.mapper;

import com.web.pojo.TbFeedback;
import com.web.pojo.TbFeedbackExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbFeedbackMapper {
    int countByExample(TbFeedbackExample example);

    int deleteByExample(TbFeedbackExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbFeedback record);

    int insertSelective(TbFeedback record);

    List<TbFeedback> selectByExample(TbFeedbackExample example);

    TbFeedback selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbFeedback record, @Param("example") TbFeedbackExample example);

    int updateByExample(@Param("record") TbFeedback record, @Param("example") TbFeedbackExample example);

    int updateByPrimaryKeySelective(TbFeedback record);

    int updateByPrimaryKey(TbFeedback record);
}
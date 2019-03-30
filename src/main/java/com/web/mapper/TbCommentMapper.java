package com.web.mapper;

import com.web.pojo.TbComment;

public interface TbCommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbComment record);

    int insertSelective(TbComment record);

    TbComment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbComment record);

    int updateByPrimaryKey(TbComment record);
}
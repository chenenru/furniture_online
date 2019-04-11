package com.web.mapper;

import com.web.pojo.Manage_Comment;
import com.web.pojo.TbComment;
import com.web.pojo.TbCommentExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbCommentMapper {
    int countByExample(TbCommentExample example);

    int deleteByExample(TbCommentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbComment record);

    int insertSelective(TbComment record);

    List<TbComment> selectByExample(TbCommentExample example);

    List<TbComment> selectCommentOfAll();

    TbComment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbComment record, @Param("example") TbCommentExample example);

    int updateByExample(@Param("record") TbComment record, @Param("example") TbCommentExample example);

    int updateByPrimaryKeySelective(TbComment record);

    int updateByPrimaryKey(TbComment record);


    List<Manage_Comment> selectManage_CommentList(Manage_Comment customer);
    Integer selectManage_CommentListCount(Manage_Comment customer);

}
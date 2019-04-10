package com.web.service.impl;

import com.web.mapper.TbCommentMapper;
import com.web.pojo.TbComment;
import com.web.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName CommentServiceImpl
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/10 16:47
 * @Version 1.0
 **/
@SuppressWarnings("ALL")
@Service
public class CommentServiceImpl implements CommentService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    TbCommentMapper tbCommentMapper;

    @Override
    public List<TbComment> selectCommentOfAll() {
        return tbCommentMapper.selectCommentOfAll();
    }

    @Override
    public void updateComment(TbComment tbComment) {
        tbCommentMapper.updateByPrimaryKeySelective(tbComment);
    }

    @Override
    public void insertComment(TbComment tbComment) {
        tbCommentMapper.insertSelective(tbComment);
    }

    @Override
    public void removeCommentById(Integer id) {
        tbCommentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public TbComment getCommentById(Integer id) {
        return tbCommentMapper.selectByPrimaryKey(id);
    }
}

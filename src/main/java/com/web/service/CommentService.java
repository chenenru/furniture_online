package com.web.service;

import com.web.pojo.Manage_Comment;
import com.web.pojo.TbComment;
import com.web.utils.Page;

import java.util.List;

public interface CommentService {

    List<TbComment> selectCommentOfAll();

    void updateComment(TbComment tbComment);

    void insertComment(TbComment tbComment);

    void removeCommentById(Integer id);

    TbComment getCommentById(Integer id);

    public Page<Manage_Comment> selectManage_CommentList(Integer page, Integer rows);


}

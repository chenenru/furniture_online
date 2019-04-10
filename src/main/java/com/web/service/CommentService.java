package com.web.service;

import com.web.pojo.TbComment;

import java.util.List;

public interface CommentService {

    List<TbComment> selectCommentOfAll();

    void updateComment(TbComment tbComment);

    void insertComment(TbComment tbComment);

    void removeCommentById(Integer id);

    TbComment getCommentById(Integer id);


}

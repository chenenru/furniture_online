package com.web.service.impl;

import com.web.mapper.TbCommentMapper;
import com.web.pojo.Manage_Comment;
import com.web.pojo.TbComment;
import com.web.service.CommentService;
import com.web.utils.Page;
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

    @Override
    public Page<Manage_Comment> selectManage_CommentList(Integer page, Integer rows) {
        Manage_Comment manage_feedback = new Manage_Comment();

        //当前页
        manage_feedback.setStart((page-1) * rows) ;
        //每页数
        manage_feedback.setRows(rows);

//        System.out.println(manage_feedback.toString());


        //查询客户列表

//        List<Manage_Order> manage_orders = manageOrderMapper.selectManage_OrderList(manage_order);


        List<Manage_Comment> manage_feedbacks = tbCommentMapper.selectManage_CommentList(manage_feedback);


        //查询客户列表总记录数
        Integer count = tbCommentMapper.selectManage_CommentListCount(manage_feedback);

        //创建Page返回对象
        Page<Manage_Comment> result = new Page<>();

        result.setPage(page);
        result.setRows(manage_feedbacks);
        result.setSize(rows);
        result.setTotal(count);

        return result;
    }
}

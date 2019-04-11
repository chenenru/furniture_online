package com.web.service.impl;

import com.web.mapper.TbFeedbackMapper;
import com.web.pojo.Manage_Feedback;
import com.web.pojo.TbFeedback;
import com.web.service.FeedbackService;
import com.web.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author shkstart
 * @create 2019-04-06 16:25
 */
@SuppressWarnings("ALL")
@Service
public class FeedbackServiceImpl implements FeedbackService {
    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    public TbFeedbackMapper tbFeedbackMapper;
    @Override
    public void saveFeedback(TbFeedback tbFeedback) {
         tbFeedbackMapper.insertSelective(tbFeedback);
    }

    @Override
    public void updateFeedback(TbFeedback tbFeedback) {
        tbFeedbackMapper.updateByPrimaryKeySelective(tbFeedback);
    }

    @Override
    public List<TbFeedback> selectFeedbackOfAll() {
        return tbFeedbackMapper.selectFeedbackOfAll();
    }

    @Override
    public void removeFeedbackById(Integer id) {
        tbFeedbackMapper.deleteByPrimaryKey(id);
    }

    @Override
    public TbFeedback getFeedbackById(Integer id) {
        return  tbFeedbackMapper.selectByPrimaryKey(id);
    }

    @Override
    public Page<Manage_Feedback> selectManage_FeedbackList(Integer page, Integer rows) {
        Manage_Feedback manage_feedback = new Manage_Feedback();

        //当前页
        manage_feedback.setStart((page-1) * rows) ;
        //每页数
        manage_feedback.setRows(rows);

//        System.out.println(manage_feedback.toString());


        //查询客户列表

//        List<Manage_Order> manage_orders = manageOrderMapper.selectManage_OrderList(manage_order);


        List<Manage_Feedback> manage_feedbacks = tbFeedbackMapper.selectManage_FeedbackList(manage_feedback);


        //查询客户列表总记录数
        Integer count = tbFeedbackMapper.selectManage_FeedbackListCount(manage_feedback);

        //创建Page返回对象
        Page<Manage_Feedback> result = new Page<>();

        result.setPage(page);
        result.setRows(manage_feedbacks);
        result.setSize(rows);
        result.setTotal(count);

        return result;
    }
}

package com.web.service;

import com.web.pojo.Manage_Feedback;
import com.web.pojo.TbFeedback;
import com.web.utils.Page;

import java.util.List;

/**
 * @author shkstart
 * @create 2019-04-06 16:24
 */
public interface FeedbackService {
    public void saveFeedback(TbFeedback tbFeedback);

    void updateFeedback(TbFeedback tbFeedback);

    List<TbFeedback> selectFeedbackOfAll();

    void removeFeedbackById(Integer id);

    TbFeedback getFeedbackById(Integer id);

    public Page<Manage_Feedback> selectManage_FeedbackList(Integer page, Integer rows);
}

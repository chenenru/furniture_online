package com.web.service.impl;

import com.web.mapper.TbFeedbackMapper;
import com.web.pojo.TbFeedback;
import com.web.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author shkstart
 * @create 2019-04-06 16:25
 */
@SuppressWarnings("ALL")
@Service
public class FeedbackServiceImpl implements FeedbackService {
    @Autowired
    public TbFeedbackMapper tbFeedbackMapper;
    @Override
    public void saveFeedback(TbFeedback tbFeedback) {
         tbFeedbackMapper.insertSelective(tbFeedback);
    }
}

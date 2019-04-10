package com.web.service.impl;

import com.web.mapper.TbFeedbackMapper;
import com.web.pojo.TbFeedback;
import com.web.service.FeedbackService;
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
}

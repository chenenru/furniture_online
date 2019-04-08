package com.web.controller;

import com.web.pojo.TbFeedback;
import com.web.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * @author shkstart
 * @create 2019-04-06 16:10
 */
@Controller
@RequestMapping("client")
public class FeedbackController {
    @Autowired
    public FeedbackService feedbackService;
@RequestMapping("/feedback")
@DateTimeFormat()
@ResponseBody
    public TbFeedback insertFeedback(@RequestBody TbFeedback tbFeedback) {
//    tbFeedback.setId(100);
        tbFeedback.setfDate(new Date());
        feedbackService.saveFeedback(tbFeedback);
        return  tbFeedback;
    }
}

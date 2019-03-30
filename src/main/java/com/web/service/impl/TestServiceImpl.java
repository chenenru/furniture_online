package com.web.service.impl;

import com.web.service.TestService;
import org.springframework.stereotype.Service;

/**
 * @author shkstart
 * @create 2019-03-29 11:24
 */
@Service
public class TestServiceImpl implements TestService {


    @Override
    public void test() {
        System.out.println("-------------------------------");
    }
}

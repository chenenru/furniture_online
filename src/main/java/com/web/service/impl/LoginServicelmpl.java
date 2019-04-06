package com.web.service.impl;

import com.web.mapper.TbClientMapper;
import com.web.pojo.TbClient;
import com.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@SuppressWarnings("ALL")
@Service
public class LoginServicelmpl implements LoginService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    private TbClientMapper tbClientMapper;

    @Override
    public boolean login(String email, String pwd) {
        TbClient tbClient = tbClientMapper.get(email);
        if (tbClient != null) {
            if (tbClient.getcEmail().equals(email) && tbClient.getcPwd().equals(pwd)) {
                return true;
            }
            return false;
        }
        return false;
    }
}

package com.web.service.impl;

import com.web.mapper.TbClientMapper;
import com.web.pojo.TbClient;
import com.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@SuppressWarnings("ALL")
@Service
public class LoginServicelmpl implements LoginService {
    @Autowired
    private TbClientMapper tbClientMapper;


    @Override
    public TbClient findClientByEmail(String c_email, String c_pwd) {
        System.out.println("c_email="+c_email+",c_pwd="+c_pwd);
        TbClient tbClient = tbClientMapper.getClientByEmail(c_email);
        System.out.println("1111111"+tbClient);
        if (tbClient != null) {
                return tbClient;
        }
        return  null;
    }
}

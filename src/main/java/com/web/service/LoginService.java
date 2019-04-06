package com.web.service;

import com.web.pojo.TbClient;

public interface LoginService {
    public TbClient findClientByEmail(String c_email,String c_pwd);
}

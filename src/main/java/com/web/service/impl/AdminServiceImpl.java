package com.web.service.impl;

import com.web.mapper.TbAdminMapper;
import com.web.pojo.TbAdmin;
import com.web.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName AdminServiceImpl
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/10 11:40
 * @Version 1.0
 **/
@SuppressWarnings("ALL")
@Service
public class AdminServiceImpl implements AdminService {

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    TbAdminMapper tbAdminMapper;

    @Override
    public TbAdmin getAdminById(Integer id) {
        return tbAdminMapper.selectByPrimaryKey(id);
    }

    @Override
    public void insertAdmin(TbAdmin tbAdmin) {
        tbAdminMapper.insertSelective(tbAdmin);
    }

    @Override
    public void removeAdminById(Integer id) {
        tbAdminMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void updateAdmin(TbAdmin tbAdmin) {
        tbAdminMapper.updateByPrimaryKeySelective(tbAdmin);
    }

    @Override
    public List<TbAdmin> selectAdminOfAll() {
        return tbAdminMapper.selectAdminOfAll();
    }

    @Override
    public TbAdmin Admin_login(String email, String pwd) {
        TbAdmin tbAdmin = tbAdminMapper.Admin_login(email,pwd);

        return tbAdmin;

    }
}

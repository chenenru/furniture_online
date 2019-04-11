package com.web.service.impl;

import com.web.mapper.TbAdminMapper;
import com.web.pojo.Manage_Admin;
import com.web.pojo.TbAdmin;
import com.web.service.AdminService;
import com.web.utils.Page;
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
    public Page<Manage_Admin> selectManage_AdminList(Integer page, Integer rows) {
        Manage_Admin manage_feedback = new Manage_Admin();

        //当前页
        manage_feedback.setStart((page-1) * rows) ;
        //每页数
        manage_feedback.setRows(rows);

//        System.out.println(manage_feedback.toString());


        //查询客户列表

//        List<Manage_Order> manage_orders = manageOrderMapper.selectManage_OrderList(manage_order);


        List<Manage_Admin> manage_feedbacks = tbAdminMapper.selectManage_AdminList(manage_feedback);


        //查询客户列表总记录数
        Integer count = tbAdminMapper.selectManage_AdminListCount(manage_feedback);

        //创建Page返回对象
        Page<Manage_Admin> result = new Page<>();

        result.setPage(page);
        result.setRows(manage_feedbacks);
        result.setSize(rows);
        result.setTotal(count);

        return result;
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

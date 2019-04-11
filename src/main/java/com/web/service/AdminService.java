package com.web.service;

import com.web.pojo.Manage_Admin;
import com.web.pojo.TbAdmin;
import com.web.utils.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminService {

    TbAdmin Admin_login(@Param("email") String email, @Param("pwd") String pwd);

    void insertAdmin(TbAdmin tbAdmin);

    void removeAdminById(Integer id);

    void updateAdmin(TbAdmin tbAdmin);

    List<TbAdmin> selectAdminOfAll();

    TbAdmin getAdminById(Integer id);

    public Page<Manage_Admin> selectManage_AdminList(Integer page, Integer rows);


}

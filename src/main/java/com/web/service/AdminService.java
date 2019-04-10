package com.web.service;

import com.web.pojo.TbAdmin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminService {

    TbAdmin Admin_login(@Param("email") String email ,@Param("pwd") String pwd);

    void insertAdmin(TbAdmin tbAdmin);

    void removeAdminById(Integer id);

    void updateAdmin(TbAdmin tbAdmin);

    List<TbAdmin> selectAdminOfAll();

    TbAdmin getAdminById(Integer id);



}

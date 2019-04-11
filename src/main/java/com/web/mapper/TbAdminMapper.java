package com.web.mapper;

import com.web.pojo.Manage_Admin;
import com.web.pojo.TbAdmin;
import com.web.pojo.TbAdminExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbAdminMapper {
    TbAdmin Admin_login(@Param("email") String email, @Param("pwd") String pwd);

    int countByExample(TbAdminExample example);

    int deleteByExample(TbAdminExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbAdmin record);

    int insertSelective(TbAdmin record);

    List<TbAdmin> selectByExample(TbAdminExample example);

    List<TbAdmin> selectAdminOfAll();

    TbAdmin selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbAdmin record, @Param("example") TbAdminExample example);

    int updateByExample(@Param("record") TbAdmin record, @Param("example") TbAdminExample example);

    int updateByPrimaryKeySelective(TbAdmin record);

    int updateByPrimaryKey(TbAdmin record);


    List<Manage_Admin> selectManage_AdminList(Manage_Admin customer);
    Integer selectManage_AdminListCount(Manage_Admin customer);
}
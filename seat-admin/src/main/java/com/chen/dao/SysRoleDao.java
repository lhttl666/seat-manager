package com.chen.dao;


import com.chen.common.pojo.CheckBox;
import com.chen.pojo.SysRole;
import com.chen.pojo.SysRoleMenu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SysRoleDao {
    /**分页查询方法*/
    int getRowCount(String name);

    List<SysRole> findPageObjects(String name,Integer startIndex, Integer pageSize);

    int insertObject(SysRole entity);

    /**role添加页面中id查询方法*/
    SysRoleMenu findById(Integer id);

    int updateObject(SysRole entity);

    @Select("select id,name from sys_roles")
    List<CheckBox> findRoles();



}

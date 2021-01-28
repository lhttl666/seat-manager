package com.chen.dao;


import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysRoleMenuDao {

    int insertObjects(Integer roleId, Integer[] menuIds);

    List<Integer> findMenuIdsByRoleIds(Integer roleId);

    @Delete("delete from sys_role_menus where role_id=#{roleId}")
    int deleteObjectsByRoleId(Integer roleId);


}

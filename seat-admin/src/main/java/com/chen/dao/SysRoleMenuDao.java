package com.chen.dao;


import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SysRoleMenuDao {

    int insertObjects(Integer roleId, Integer[] menuIds);


}

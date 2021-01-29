package com.chen.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SysUserRoleDao {

    int insertObjects(Integer userId, Integer[] roleIds);

    @Select("select role_id from sys_user_roles where user_id=#{userId}")
    List<Integer> findRoleIdsByUserId(Integer userId);













}

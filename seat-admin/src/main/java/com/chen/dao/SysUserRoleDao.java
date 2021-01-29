package com.chen.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SysUserRoleDao {

    int insertObjects(Integer userId, Integer[] roleIds);














}

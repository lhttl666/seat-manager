package com.chen.dao;


import com.chen.pojo.SysUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysUserDao {

    List<SysUser> findPageObjects(String name);




}

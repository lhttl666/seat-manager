package com.chen.dao;


import com.chen.pojo.SysUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface SysUserDao {

    List<SysUser> findPageObjects(String name);

    /**
     * 禁用用户
     */
    @Update("update sys_users set valid=#{valid},modifiedTime=now() where id=#{id}")
    int validById(Integer id, Integer valid);

    /* 用户添加自身信息方法 */
    int insertObject(SysUser entity);

    SysUser findById(Integer id);

    int updateObject(SysUser entity);

    @Select("select * from sys_users where username=#{username}")
    SysUser findUserByUsername(String username);

}

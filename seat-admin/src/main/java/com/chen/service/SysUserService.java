package com.chen.service;


import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysUser;

public interface SysUserService {

    PageObject<SysUser> findPageObjects(String username, Integer pageCurrent);

    int validById(Integer id, Integer valid);

    int saveObject(SysUser entity, Integer[] roleIds);


}

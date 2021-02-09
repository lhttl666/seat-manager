package com.chen.service;


import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysUser;

import java.util.HashMap;
import java.util.Map;

public interface SysUserService {

    PageObject<SysUser> findPageObjects(String username, Integer pageCurrent);

    int validById(Integer id, Integer valid);

    int saveObject(SysUser entity, Integer[] roleIds);

    Map<String,Object> findById(Integer id);

    int updateObject(SysUser entity, Integer[] roleIds);

    int updatePassword(String password, String newPassword, String cfgPassword);

    SysUser findUserInfoById(Integer id);

    int updateUserInfo(Integer id, SysUser entity);

    HashMap<String, Object> getCurrentUserData();

}

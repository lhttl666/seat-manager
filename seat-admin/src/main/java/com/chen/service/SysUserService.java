package com.chen.service;


import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysUser;

public interface SysUserService {

    PageObject<SysUser> findPageObjects(String username, Integer pageCurrent);


}

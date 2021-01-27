package com.chen.service;

import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysRole;

import java.util.List;

public interface SysRoleService {
    PageObject<SysRole> findPageObject(String name, Integer pageCurrent);

    int saveObject(SysRole entity, Integer[] menuIds);

}

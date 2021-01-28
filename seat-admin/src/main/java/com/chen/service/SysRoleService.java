package com.chen.service;

import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysRole;
import com.chen.pojo.SysRoleMenu;

import java.util.List;

public interface SysRoleService {
    PageObject<SysRole> findPageObject(String name, Integer pageCurrent);

    int saveObject(SysRole entity, Integer[] menuIds);

    /**基于id查询角色和角色对应菜单id*/
    SysRoleMenu findById(Integer id);

    int updateObject(SysRole entity, Integer[] menuIdS);


}

package com.chen.service;

import com.chen.common.pojo.Node;
import com.chen.pojo.SysMenu;
import com.chen.pojo.SysUserMenu;

import java.util.List;

public interface SysMenuService {
    List<SysMenu> findObjects();

    int saveObject(SysMenu entity);

    List<Node> findZtreeMenuNodes();

    int updateObject(SysMenu entity);

    List<SysUserMenu> findUserMenus(Integer userId);


}

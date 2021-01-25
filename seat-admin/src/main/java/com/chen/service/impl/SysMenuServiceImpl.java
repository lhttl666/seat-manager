package com.chen.service.impl;

import com.chen.dao.SysMenuDao;
import com.chen.pojo.SysMenu;
import com.chen.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SysMenuServiceImpl implements SysMenuService {
    @Autowired
    private SysMenuDao sysMenuDao;


    /*
    * 显示菜单全部信息
    * @author GangsterChen
    * @date 2021/1/25 21:29
    * @param []
    * @return []
    */
    @Override
    public List<SysMenu> findObjects() {
        return sysMenuDao.findObjects();
    }
}

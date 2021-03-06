package com.chen.service.impl;

import com.chen.common.pojo.Node;
import com.chen.dao.SysMenuDao;
import com.chen.pojo.SysMenu;
import com.chen.pojo.SysUserMenu;
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

    /*
     * @author GangsterChen
     * @date 2021/1/26 14:06
     * @param [entity]
     * @return [com.chen.pojo.SysMenu]
     */
    @Override
    public int saveObject(SysMenu entity) {
        return sysMenuDao.insertObject(entity);
    }

    /*
     * @author GangsterChen
     * @date 2021/1/26 18:10
     * @param []
     * @return []
     */
    @Override
    public List<Node> findZtreeMenuNodes() {
        return sysMenuDao.findZtreeMenuNodes();
    }

    /*
     * @author GangsterChen
     * @date 2021/1/26 20:54
     * @param [entity]
     * @return [com.chen.pojo.SysMenu]
     */
    @Override
    public int updateObject(SysMenu entity) {
        return sysMenuDao.updateObject(entity);
    }

    /*
     * 筛选出用户已有权限所对应的菜单ID
     * @author GangsterChen
     * @date 2021/2/3 10:16
     * @param [userId]
     * @return [java.lang.Integer]
     */
    @Override
    public List<SysUserMenu> findUserMenus(Integer userId) {
        return sysMenuDao.findUserMenus(userId);
    }
}

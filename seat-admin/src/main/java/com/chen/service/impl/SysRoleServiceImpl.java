package com.chen.service.impl;

import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.CheckBox;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysRoleDao;
import com.chen.dao.SysRoleMenuDao;
import com.chen.pojo.SysRole;
import com.chen.pojo.SysRoleMenu;
import com.chen.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysRoleServiceImpl implements SysRoleService
{

    @Autowired
    private SysRoleDao sysRoleDao;

    @Autowired
    private SysRoleMenuDao sysRoleMenuDao;

    /*
     * 分页查询方法
     * @author GangsterChen
     * @date 2021/1/27 14:47
     * @param [name, pageCurrent]
     * @return [java.lang.String, java.lang.Integer]
     */
    @Override
    public PageObject<SysRole> findPageObject(String name, Integer pageCurrent) {
        if (pageCurrent == null || pageCurrent < 1) throw new IllegalArgumentException("页码值不合法！SysRoleServiceImpl");
        int rowCount = sysRoleDao.getRowCount(name);
        if (rowCount == 0) throw new ServiceException("该记录不存在!! SysRoleServiceImpl");
        int pageSize = 5;
        int startIndex = (pageCurrent - 1) * pageSize;
        List<SysRole> records = sysRoleDao.findPageObjects(name, startIndex, pageSize);
        return new PageObject<>(rowCount, records, pageSize, pageCurrent);
    }

    @Override
    public int saveObject(SysRole entity, Integer[] menuIds) {
        // 1.参数校验
        if (entity == null || menuIds == null) throw new ServiceException("参数或者id列表不能为空!! SysRoleServiceImpl");
        // 2.保存角色自身信息
        int rows = sysRoleDao.insertObject(entity);
        // 3.保存角色和菜单关系数据
        sysRoleMenuDao.insertObjects(entity.getId(), menuIds);
        return rows;
    }

    /*
     * 基于id查询角色和角色对应菜单id
     * @author GangsterChen
     * @date 2021/1/28 13:32
     * @param [id]
     * @return [java.lang.Integer]
     */
    @Override
    public SysRoleMenu findById(Integer id) {
        /*方案 1 */
       /* if (id == null || id < 1) throw new ServiceException("id值不正确!!SysRoleServiceImpl-SysRoleMenu");
        SysRoleMenu roleMenu = sysRoleDao.findById(id);
        if (roleMenu == null) throw new ServiceException("记录可能已经不存在! SysRoleServiceImpl-SysRoleMenu");
        List<Integer> meunIds = sysRoleMenuDao.findMenuIdsByRoleIds(id);
        roleMenu.setMenuIds(meunIds);
        return roleMenu;*/

        /*方案2*/
        if (id == null || id < 1) throw new ServiceException("id值不正确!!SysRoleServiceImpl-SysRoleMenu");
        SysRoleMenu roleMenu = sysRoleDao.findById(id);
        if (roleMenu == null) throw new ServiceException("记录可能已经不存在! SysRoleServiceImpl-SysRoleMenu");
        return roleMenu;


    }

    @Override
    public int updateObject(SysRole entity, Integer[] menuIdS) {
        int rows = sysRoleDao.updateObject(entity);
        if (rows==0) throw new ServiceException("该记录可能不存在!! SysRoleServiceImpl-updateObject");
        sysRoleMenuDao.deleteObjectsByRoleId(entity.getId());
        sysRoleMenuDao.insertObjects(entity.getId(), menuIdS);
        return rows;
    }

    /*
    * 用户添加页面显示角色列表
    * @author GangsterChen
    * @date 2021/1/29 12:31
    * @param []
    * @return []
    */
    @Override
    public List<CheckBox> findRoles() {
        return sysRoleDao.findRoles();
    }
}

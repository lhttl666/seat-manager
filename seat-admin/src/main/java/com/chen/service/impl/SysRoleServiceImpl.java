package com.chen.service.impl;

import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysRoleDao;
import com.chen.pojo.SysRole;
import com.chen.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysRoleServiceImpl implements SysRoleService {

    @Autowired
    private SysRoleDao sysRoleDao;

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
}

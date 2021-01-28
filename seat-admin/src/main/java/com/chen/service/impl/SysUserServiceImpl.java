package com.chen.service.impl;

import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysUserDao;
import com.chen.pojo.SysUser;
import com.chen.service.SysUserService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SysUserServiceImpl implements SysUserService {

    @Autowired
    private SysUserDao sysUserDao;

    /*
     * 分页
     * @author GangsterChen
     * @date 2021/1/28 20:01
     * @param [username, pageCurrent]
     * @return [java.lang.String, java.lang.Integer]
     */
    @Override
    public PageObject<SysUser> findPageObjects(String username, Integer pageCurrent) {
        int pageSize = 5;
        Page<SysUser> page = PageHelper.startPage(pageCurrent, pageSize);
        List<SysUser> records = sysUserDao.findPageObjects(username);
        return new PageObject<>((int) page.getTotal(), records, pageSize, pageCurrent);
    }

    /*
     * 禁用/启用用户
     * @author GangsterChen
     * @date 2021/1/28 20:01
     * @param [id, valid]
     * @return [java.lang.Integer, java.lang.Integer]
     */
    @Override
    public int validById(Integer id, Integer valid) {
        int row = sysUserDao.validById(id, valid);
        if (row == 0) throw new ServiceException("该记录可能不存在! SysUserServiceImpl-validById");
        return row;
    }
}

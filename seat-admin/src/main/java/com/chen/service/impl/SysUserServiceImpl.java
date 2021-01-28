package com.chen.service.impl;

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


    @Override
    public PageObject<SysUser> findPageObjects(String username, Integer pageCurrent) {
        int pageSize = 5;
        Page<SysUser> page = PageHelper.startPage(pageCurrent, pageSize);
        List<SysUser> records = sysUserDao.findPageObjects(username);
        return new PageObject<>((int) page.getTotal(), records, pageSize, pageCurrent);
    }
}

package com.chen.service.impl;

import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysLogDao;
import com.chen.pojo.SysLog;
import com.chen.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SysLogDao sysLogDao;

    @Override
    public PageObject<SysLog> findPageObjects(String username, Integer pageCurrent) {
        // 1.对参数进行校验
        if (pageCurrent == null || pageCurrent < 1) throw new IllegalArgumentException("页码不合法!!");
        // 2.基于查询条件查询总记录数并校验
        int rowCount = sysLogDao.getRowCount(username);
        if (rowCount == 0) throw new ServiceException("没有找到对应记录!!");
        // 3.查询当前页记录
        int pageSize = 5;//页面大小，每页最多显示多少条记录
        int startIndex = (pageCurrent - 1) * pageSize;//当前页起始位置
        List<SysLog> records = sysLogDao.findPageObjects(username, startIndex, pageSize);
        //4.封装查询结果
        return new PageObject<>(rowCount, records, pageSize, pageCurrent);
    }
}

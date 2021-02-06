package com.chen.service.impl;

import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysNoticeDao;
import com.chen.pojo.SysNotice;
import com.chen.pojo.SysRole;
import com.chen.service.SysNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysNoticeServiceImpl implements SysNoticeService {

    @Autowired
    private SysNoticeDao sysNoticeDao;

    @Override
    public PageObject<SysNotice> doFindNoticePageObjects(String name, Integer pageCurrent) {
        if (pageCurrent == null || pageCurrent < 1)
            throw new IllegalArgumentException("页码值不合法！doFindNoticePageObjects");
        int rowCount = sysNoticeDao.getRowCount(name);
        if (rowCount == 0) throw new ServiceException("该记录不存在!! doFindNoticePageObjects");
        int pageSize = 8;
        int startIndex = (pageCurrent - 1) * pageSize;
        List<SysNotice> records = sysNoticeDao.findPageObjects(name, startIndex, pageSize);
        return new PageObject<>(rowCount, records, pageSize, pageCurrent);
    }

    @Override
    public int saveObject(SysNotice entity, Integer[] menuIds) {
        return 0;
    }

    @Override
    public SysNotice findById(Integer id) {
        return sysNoticeDao.findById(id);
    }

    @Override
    public int doDeleteObject(Integer id) {
        return sysNoticeDao.doDeleteObject(id);
    }
}

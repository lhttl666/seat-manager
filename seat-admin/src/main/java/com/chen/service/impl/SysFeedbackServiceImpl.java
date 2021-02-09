package com.chen.service.impl;

import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysFeedbackDao;
import com.chen.pojo.SysFeedback;
import com.chen.pojo.SysLog;
import com.chen.service.SysFeedbackService;
import com.chen.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class SysFeedbackServiceImpl implements SysFeedbackService {

    @Autowired
    private SysFeedbackDao sysFeedbackDao;

    @Autowired
    private SysUserService sysUserService;

    @Override
    public int doSaveObject(SysFeedback entity) {
        HashMap<String, Object> userMap = sysUserService.getCurrentUserData();
        Integer userId = (Integer) userMap.get("id");
        entity.setUserId(userId);
        return sysFeedbackDao.doSaveObject(entity);
    }


    @Override
    public PageObject<SysFeedback> findPageObjects(String feedback, Integer pageCurrent) {
        // 1.对参数进行校验
        if (pageCurrent == null || pageCurrent < 1) throw new IllegalArgumentException("页码不合法!!");
        // 2.基于查询条件查询总记录数并校验
        int rowCount = sysFeedbackDao.getRowCount(feedback);
        if (rowCount == 0) throw new ServiceException("没有找到对应记录!!");
        // 3.查询当前页记录
        int pageSize = 6;//页面大小，每页最多显示多少条记录
        int startIndex = (pageCurrent - 1) * pageSize;//当前页起始位置
        List<SysFeedback> records = sysFeedbackDao.findPageObjects(feedback, startIndex, pageSize);
        // records.forEach(a-> System.out.println(a)); // 获取数据正常
        //4.封装查询结果
        return new PageObject<>(rowCount, records, pageSize, pageCurrent);
    }

}

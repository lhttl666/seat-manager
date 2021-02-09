package com.chen.service.impl;

import com.chen.dao.SysFeedbackDao;
import com.chen.pojo.SysFeedback;
import com.chen.service.SysFeedbackService;
import com.chen.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class SysFeedbackServiceImpl implements SysFeedbackService {

    @Autowired
    private SysFeedbackDao sysFeedbackDao;

    @Autowired
    private SysUserService sysUserService;

    @Override
    public int doSaveObject(SysFeedback entity) {
        System.out.println("进入doSaveObject***************************");

        HashMap<String, Object> userMap = sysUserService.getCurrentUserData();
        Integer userId = (Integer) userMap.get("id");
        System.out.println("***************************");
        System.out.println("***************************");
        System.out.println(userId);
        System.out.println("***************************");
        System.out.println("***************************");
        System.out.println("***************************");


        entity.setUserId(userId);
        return sysFeedbackDao.doSaveObject(entity);
    }
}

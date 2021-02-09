package com.chen.service;

import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysFeedback;

public interface SysFeedbackService {

    int doSaveObject(SysFeedback entity);

    PageObject<SysFeedback> findPageObjects(String feedback, Integer pageCurrent);

}

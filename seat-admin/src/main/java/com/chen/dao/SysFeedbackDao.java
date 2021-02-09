package com.chen.dao;

import com.chen.pojo.SysFeedback;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SysFeedbackDao {

    int doSaveObject(SysFeedback entity);

}

package com.chen.dao;

import com.chen.pojo.SysFeedback;
import com.chen.pojo.SysLog;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysFeedbackDao {

    int doSaveObject(SysFeedback entity);

    int getRowCount(String content);

    List<SysFeedback> findPageObjects(String feedback, Integer startIndex, Integer pageSize);


}

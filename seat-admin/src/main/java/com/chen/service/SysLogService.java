package com.chen.service;


import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysLog;

public interface SysLogService {
    /*
    * 基于条件查询用户日志并进行封装
    * @author GangsterChen
    * @date 2021/1/23 22:49
    * @param [username, pageCurrent] 查询条件, 当前页码值
    * @return 封装分页查询结果
    */
    PageObject<SysLog> findPageObjects(String username, Integer pageCurrent);
}

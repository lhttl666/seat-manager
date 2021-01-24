package com.chen.dao;

import com.chen.pojo.SysLog;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SysLogDao {
    /**
     * 基于条件查询用户日志总记录数
     *
     * @param username 查询条件
     * @return 查询到的总记录数
     */
//    int getRowCount(@Param("username") String username);
    int getRowCount(String username);

    /**
     * 于条件查询当前页的日志记录
     *
     * @param username   查询条件
     * @param startIndex 分页查询条件的起始位置
     * @param pageSize   每页最多多少条记录
     */
   /* List<SysLog> findPageObjects(
            @Param("username") String username,
            @Param("startIndex") Integer startIndex,
            @Param("pageSize") Integer pageSize);*/
    List<SysLog> findPageObjects(String username, Integer startIndex, Integer pageSize);
}

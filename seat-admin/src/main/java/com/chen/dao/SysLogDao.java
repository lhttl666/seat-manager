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

    /*
     * @author GangsterChen
     * @date 2021/1/26 21:03
     * @param [username, startIndex, pageSize]
     * @return [java.lang.String, java.lang.Integer, java.lang.Integer]
     */
    List<SysLog> findPageObjects(String username, Integer startIndex, Integer pageSize);

    int insertObject(SysLog entity);



}

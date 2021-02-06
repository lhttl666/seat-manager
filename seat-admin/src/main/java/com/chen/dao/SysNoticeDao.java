package com.chen.dao;

import com.chen.pojo.SysNotice;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;


@Mapper
public interface SysNoticeDao {

    /**
     * 分页查询方法
     */
    int getRowCount(String name);

    List<SysNotice> findPageObjects(String name, Integer startIndex, Integer pageSize);

    int insertObject(SysNotice entity);

    @Select("select * from sys_notices where id=#{id}")
    SysNotice findById(Integer id);

    @Delete("delete from sys_notices where id=#{id}")
    int doDeleteObject(Integer id);

}

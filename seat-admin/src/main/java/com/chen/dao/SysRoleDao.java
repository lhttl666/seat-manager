package com.chen.dao;


import com.chen.pojo.SysRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SysRoleDao {
    /**分页查询方法*/
    int getRowCount(String name);

    List<SysRole> findPageObjects(String name,Integer startIndex, Integer pageSize);


}

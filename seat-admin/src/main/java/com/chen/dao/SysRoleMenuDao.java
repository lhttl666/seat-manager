package com.chen.dao;


import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysRoleMenuDao {

    int insertObjects(Integer roleId, Integer[] menuIds);

    List<Integer> findMenuIdsByRoleIds(Integer roleId);


}

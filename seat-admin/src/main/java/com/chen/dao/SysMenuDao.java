package com.chen.dao;


import com.chen.pojo.SysMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysMenuDao {
    /**查询所有菜单信息*/
    List<SysMenu> findObjects();

}

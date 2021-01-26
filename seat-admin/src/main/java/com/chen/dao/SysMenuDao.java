package com.chen.dao;


import com.chen.common.pojo.Node;
import com.chen.pojo.SysMenu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SysMenuDao {
    /**
     * 查询所有菜单信息
     */
    List<SysMenu> findObjects();

    int insertObject(SysMenu entity);

    @Select("select id,name,parentId from sys_menus")
    List<Node> findZtreeMenuNodes();

    int updateObject(SysMenu entity);

}

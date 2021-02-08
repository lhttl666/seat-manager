package com.chen.dao;

import com.chen.common.pojo.Node;
import com.chen.common.pojo.SeatNode;
import com.chen.pojo.SysMenu;
import com.chen.pojo.SysSeat;
import com.chen.pojo.SysUserMenu;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Set;

@Mapper
public interface SysSeatDao {

    List<SysSeat> findObjects();

    int insertObject(SysSeat entity);

    @Select("select id,name,parentId from sys_seats")
    List<SeatNode> findZtreeMenuNodes();

    int updateObject(SysSeat entity);

    @Delete("delete from sys_seats where id=#{id}")
    int deleteObject(SysSeat entity);
}

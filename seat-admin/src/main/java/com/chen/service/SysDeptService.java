package com.chen.service;


import com.chen.common.pojo.Node;
import com.chen.pojo.SysDept;

import java.util.List;
import java.util.Map;


public interface SysDeptService {
    List<Map<String,Object>> findObjects();
    List<Node> findZTreeNodes();
    int saveObject(SysDept entity);
    int updateObject(SysDept entity);
    int deleteObject(Integer id);
}

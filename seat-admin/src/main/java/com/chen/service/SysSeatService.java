package com.chen.service;

import com.chen.common.pojo.SeatNode;
import com.chen.pojo.SysSeat;

import java.util.List;

public interface SysSeatService {
    List<SysSeat> findObjects();

    int saveObject(SysSeat entity);

    List<SeatNode> findZtreeMenuNodes();

    int updateObject(SysSeat entity);
}

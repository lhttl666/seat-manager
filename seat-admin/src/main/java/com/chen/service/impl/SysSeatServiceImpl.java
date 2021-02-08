package com.chen.service.impl;

import com.chen.common.pojo.SeatNode;
import com.chen.dao.SysSeatDao;
import com.chen.pojo.SysSeat;
import com.chen.service.SysSeatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysSeatServiceImpl implements SysSeatService {

    @Autowired
    private SysSeatDao sysSeatDao;

    @Override
    public List<SysSeat> findObjects() {
        return sysSeatDao.findObjects();
    }

    @Override
    public int saveObject(SysSeat entity) {
        return sysSeatDao.insertObject(entity);
    }

    @Override
    public List<SeatNode> findZtreeMenuNodes() {
        return sysSeatDao.findZtreeMenuNodes();
    }

    @Override
    public int updateObject(SysSeat entity) {
        return sysSeatDao.updateObject(entity);
    }

    @Override
    public int doDeleteObject(SysSeat entity) {
        return sysSeatDao.deleteObject(entity);
    }
}

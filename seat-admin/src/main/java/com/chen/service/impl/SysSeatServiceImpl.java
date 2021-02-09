package com.chen.service.impl;

import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.SeatNode;
import com.chen.dao.SysSeatDao;
import com.chen.pojo.SysSeat;
import com.chen.pojo.SysUser;
import com.chen.service.SysSeatService;
import com.chen.service.SysUserService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

@Service
@Transactional
public class SysSeatServiceImpl implements SysSeatService {

    @Autowired
    private SysSeatDao sysSeatDao;

    @Autowired
    private SysUserService sysUserService;

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

    @Override
    public int reserveSeat(SysSeat entity) {
        HashMap<String, Object> userMap = sysUserService.getCurrentUserData();

        List<SysSeat> list = sysSeatDao.findObjects();
        for (SysSeat seat : list) {
            if (seat.getUsedUser() == null) {

            } else {
                if (userMap.get("username").equals(seat.getUsedUser()))
                    throw new ServiceException("您已经预定了其他座位!");
            }
        }
        entity.setUsedUser((String) userMap.get("username"));
        entity.setState(2);

        return sysSeatDao.reserveSeat(entity);
    }

    @Override
    public int returnSeat(SysSeat entity) {
        entity.setState(1);
        return sysSeatDao.returnSeat(entity);
    }
}

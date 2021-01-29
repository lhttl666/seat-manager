package com.chen.service.impl;

import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysUserDao;
import com.chen.dao.SysUserRoleDao;
import com.chen.pojo.SysUser;
import com.chen.service.SysUserService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;


@Service
public class SysUserServiceImpl implements SysUserService {

    @Autowired
    private SysUserDao sysUserDao;

    @Autowired
    private SysUserRoleDao sysUserRoleDao;

    /*
     * 分页
     * @author GangsterChen
     * @date 2021/1/28 20:01
     * @param [username, pageCurrent]
     * @return [java.lang.String, java.lang.Integer]
     */
    @Override
    public PageObject<SysUser> findPageObjects(String username, Integer pageCurrent) {
        int pageSize = 5;
        Page<SysUser> page = PageHelper.startPage(pageCurrent, pageSize);
        List<SysUser> records = sysUserDao.findPageObjects(username);
        return new PageObject<>((int) page.getTotal(), records, pageSize, pageCurrent);
    }

    /*
     * 禁用/启用用户
     * @author GangsterChen
     * @date 2021/1/28 20:01
     * @param [id, valid]
     * @return [java.lang.Integer, java.lang.Integer]
     */
    @Override
    public int validById(Integer id, Integer valid) {
        int row = sysUserDao.validById(id, valid);
        if (row == 0) throw new ServiceException("该记录可能不存在! SysUserServiceImpl-validById");
        return row;
    }

    /*
     * 保存用户关系数据
     * @author GangsterChen
     * @date 2021/1/29 17:05
     * @param [entity, roleIds]
     * @return [com.chen.pojo.SysUser, java.lang.Integer[]]
     */
    @Override
    public int saveObject(SysUser entity, Integer[] roleIds) {
        // 参数校验

        // 产生随机字符串作为加密盐值
        String salt = UUID.randomUUID().toString();
        // 对密码进行MD5盐值加密(md5不可逆,相同内容加密结果相同) params(加密方式,被加密的数据,加密的盐,加密次数)
        SimpleHash sh = new SimpleHash("MD5", entity.getPassword(), salt, 1);
        String hashedPassword = sh.toHex();  // 转化成16进制
        entity.setSalt(salt);
        entity.setPassword(hashedPassword);
        int rows = sysUserDao.insertObject(entity);
        sysUserRoleDao.insertObjects(entity.getId(), roleIds);
        return rows;
    }
}

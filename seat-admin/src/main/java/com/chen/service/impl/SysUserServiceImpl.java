package com.chen.service.impl;

import com.chen.common.annotation.RequiredLog;
import com.chen.common.exception.ServiceException;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysUserDao;
import com.chen.dao.SysUserRoleDao;
import com.chen.pojo.SysUser;
import com.chen.service.SysUserService;
import com.github.pagehelper.Page;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.crypto.hash.SimpleHash;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;


@Transactional(
        readOnly = false,
        rollbackFor = Throwable.class,
        isolation = Isolation.READ_COMMITTED,
        timeout = 5,
        propagation = Propagation.REQUIRED)
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
    @RequiredLog("日志分页查询")
    public PageObject<SysUser> findPageObjects(String username, Integer pageCurrent) {
        int pageSize = 8;
        Page<SysUser> page = PageHelper.startPage(pageCurrent, pageSize);
        List<SysUser> records = sysUserDao.findPageObjects(username);
        return new PageObject<>((int) page.getTotal(), records, pageSize, pageCurrent);
    }

    /*
     * 禁用/启用用户
     * @RequiresPermissions 切入点方法,在执行时,需要判定用户是否有访问此方法的权限
     * @author GangsterChen
     * @date 2021/1/28 20:01
     * @param [id, valid]
     * @return [java.lang.Integer, java.lang.Integer]
     */
    @Override
    @RequiresPermissions("sys:user:update")
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

    /*
     * 基于用户ID查询用户相关信息的方法实现
     * @author GangsterChen
     * @date 2021/1/29 20:59
     * @param [id]
     * @return [java.lang.Integer]
     */
    //
    @Transactional(readOnly = true)
    @Override
    public Map<String, Object> findById(Integer id) {
        SysUser user = sysUserDao.findById(id);
        if (user == null) throw new ServiceException("该用户可能已经不存在!!");
        List<Integer> roleIds = sysUserRoleDao.findRoleIdsByUserId(id);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("user", user);  //key 要与客户端取值方式一致
        map.put("roleIds", roleIds);
        return map;
    }

    /*
     * 角色页面修改用户以及用户角色关系数据方法的实现
     * @author GangsterChen
     * @date 2021/1/30 11:49
     * @param [entity, roleIds]
     * @return [com.chen.pojo.SysUser, java.lang.Integer[]]
     */
    @Override
    public int updateObject(SysUser entity, Integer[] roleIds) {
        // 1.参数校验
        if (roleIds == null) throw new ServiceException("该记录可能不存在!  SysUserServiceImpl-updateObject");
        // 2.更新用户自身信息
        int rows = sysUserDao.updateObject(entity);
        if (rows == 0) throw new ServiceException("该记录可能不存在!  SysUserServiceImpl-updateObject");
        // 3.更新用户和角色关系数据
        sysUserRoleDao.deleteObjectsByUserId(entity.getId());
        sysUserRoleDao.insertObjects(entity.getId(), roleIds);
        return rows;
    }
}

package com.chen.service.realm;

import com.chen.dao.SysMenuDao;
import com.chen.dao.SysUserDao;
import com.chen.pojo.SysUser;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Set;


public class ShiroRealm extends AuthorizingRealm {
    @Autowired
    private SysUserDao sysUserDao;
    @Autowired
    private SysMenuDao sysMenuDao;

    /**
     * 此方法负责获取并封装授权信息
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(
            PrincipalCollection principalCollection) {
        /*//1.获取登录用户(登录时传入的用户身份是谁)
        SysUser user= (SysUser) principalCollection.getPrimaryPrincipal();
        //2.基于登录用户id获取用户权限标识
        Set<String> stringPermissions=
                sysMenuDao.findUserPermissions(user.getId());
        //3.封装数据并返回
        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        info.setStringPermissions(stringPermissions);
        return info;*/


        return null;
    }

    /**
     * 此方法负责获取并封装认证信息
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken authenticationToken) throws AuthenticationException {
       /* //1.获取用户提交的认证用户信息
        UsernamePasswordToken upToken = (UsernamePasswordToken) authenticationToken;
        String username = upToken.getUsername();
        //2.基于用户名查询从数据库用户信息
        SysUser sysUser = sysUserDao.findUserByUsername(username);
        //3.判断用户是否存在
        if (sysUser == null) throw new UnknownAccountException();//账户不存在
        //4.判断用户是否被禁用
        if (sysUser.getValid() == 0) throw new LockedAccountException();
        //5.封装认证信息并返回
        ByteSource credentialsSalt =
                ByteSource.Util.bytes(sysUser.getSalt());
        SimpleAuthenticationInfo info =
                new SimpleAuthenticationInfo(
                        sysUser, //principal 传入的用户身份
                        sysUser.getPassword(),//hashedCredentials
                        credentialsSalt,//credentialsSalt
                        getName());
                                return info;

                        */




        return null;
    }

    @Override
    public CredentialsMatcher getCredentialsMatcher() {
        HashedCredentialsMatcher matcher = new HashedCredentialsMatcher();
        matcher.setHashAlgorithmName("MD5");
        matcher.setHashIterations(1);
        return matcher;
    }
}
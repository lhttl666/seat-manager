package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysUserDao;
import com.chen.pojo.SysRole;
import com.chen.pojo.SysUser;
import com.chen.service.SysUserService;
import com.sun.org.apache.bcel.internal.generic.JSR;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

@RestController
@RequestMapping("/user/")
public class SysUserController {

    @Autowired
    private SysUserService sysUserService;

    @GetMapping("/doFindPageObjects")
    public JsonResult doFindPageObjects(String username, Integer pageCurrent) {
        PageObject<SysUser> pageObjects = sysUserService.findPageObjects(username, pageCurrent);
        return new JsonResult(pageObjects);
    }

    @RequestMapping("/doValidById/{id}/{valid}")
    public JsonResult doValidyId(@PathVariable Integer id,
                                 @PathVariable Integer valid) {
        sysUserService.validById(id, valid);
        return new JsonResult("valid update ok!");
    }

    @PostMapping("/doSaveObject")
    public JsonResult doSaveObject(SysUser entity, Integer[] roleIds) {
        sysUserService.saveObject(entity, roleIds);
        return new JsonResult("save ok!!");
    }

    @GetMapping("/doFindById/{id}")
    public JsonResult doFindById(@PathVariable Integer id) {
        return new JsonResult(sysUserService.findById(id));
    }

    @RequestMapping("/doUpdateObject")
    public JsonResult doUpdateObject(SysUser entity, Integer[] roleIds) {
        sysUserService.updateObject(entity, roleIds);
        return new JsonResult("update ok!!");
    }

    @RequestMapping("/doLogin")
    public JsonResult doLogin(String username, String password) {
        // 将账号密码封装到token对象
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject currentUser = SecurityUtils.getSubject();
        currentUser.login(token);
        return new JsonResult("login ok!");
    }

    @RequestMapping("doUpdatePassword")
    public JsonResult doUpdatePassword(String pwd, String newPwd, String cfgPwd) {
        sysUserService.updatePassword(pwd, newPwd, cfgPwd);
        return new JsonResult("update ok");
    }

    @RequestMapping("/doFindUserInfo/{id}")
    public JsonResult doFindUserInfo(@PathVariable Integer id) {
        return new JsonResult(sysUserService.findUserInfoById(id));
    }

    @RequestMapping("/doShowUserInfo/{id}")
    public HashMap<String, Object> doShowUserInfo(@PathVariable Integer id){
        SysUser user = sysUserService.findUserInfoById(id);
        HashMap<String, Object> map = new HashMap<>();
        map.put("username", user.getUsername());
        map.put("sex", user.getSex());
        map.put("birthday", user.getBirthday());
        map.put("email", user.getEmail());
        map.put("mobile", user.getMobile());
        return map;
    }

    // 获取当前用户的数据
    @RequestMapping("/doFindCurrentUserId")
    public String doFindCurrentUserId() {
        SysUser user = (SysUser) SecurityUtils.getSubject().getPrincipal();
        return user.getId().toString();
    }


}

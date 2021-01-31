package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysUserDao;
import com.chen.pojo.SysRole;
import com.chen.pojo.SysUser;
import com.chen.service.SysUserService;
import com.sun.org.apache.bcel.internal.generic.JSR;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

}

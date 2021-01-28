package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.common.pojo.PageObject;
import com.chen.dao.SysUserDao;
import com.chen.pojo.SysUser;
import com.chen.service.SysUserService;
import com.sun.org.apache.bcel.internal.generic.JSR;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @RequestMapping("/doValidById")
    public JsonResult doValidyId(Integer id, Integer valid) {
        sysUserService.validById(id, valid);
        return new JsonResult("valid update ok!");
    }


}

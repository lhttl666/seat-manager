package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.dao.SysNoticeDao;
import com.chen.pojo.SysNotice;
import com.chen.pojo.SysUser;
import com.chen.service.SysNoticeService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

@RestController
@RequestMapping("/notice/")
public class SysNoticeController {

    @Autowired
    private SysNoticeService sysNoticeService;

    @GetMapping("/doFindNoticePageObjects")
    public JsonResult doFindNoticePageObjects(String name, Integer pageCurrent) {
        return new JsonResult(sysNoticeService.doFindNoticePageObjects(name, pageCurrent));
    }

    @GetMapping("/doFindById/{id}")
    public JsonResult doFindById(@PathVariable Integer id) {
        SysNotice entity = sysNoticeService.findById(id);
        System.out.println(entity.toString());
        return new JsonResult(entity);
    }

    @PostMapping("/doDeleteObject")
    public JsonResult doDeleteObject(SysNotice entity) {
        sysNoticeService.doDeleteObject(entity.getId());
        return new JsonResult("delete ok!");
    }


    @RequestMapping("/doUpdateNotice")
    public JsonResult doUpdateNotice(SysNotice entity) {
        SysUser user = (SysUser) SecurityUtils.getSubject().getPrincipal();
        entity.setModifiedUser(user.getUsername());
        sysNoticeService.updateNoticeObject(entity);
        return new JsonResult("update ok!");
    }


    @RequestMapping("/doSaveNotice")
    public JsonResult doSaveNotice(SysNotice entity) {
        SysUser user = (SysUser) SecurityUtils.getSubject().getPrincipal();
        entity.setCreatedUser(user.getUsername());
        sysNoticeService.saveNoticeObject(entity);
        return new JsonResult("新公告保存成功!");
    }

}

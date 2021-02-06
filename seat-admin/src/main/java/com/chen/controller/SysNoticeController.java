package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.dao.SysNoticeDao;
import com.chen.pojo.SysNotice;
import com.chen.service.SysNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
        return new JsonResult(sysNoticeService.findById(id));
    }

    @PostMapping("/doDeleteObject")
    public JsonResult doDeleteObject(SysNotice entity) {
        sysNoticeService.doDeleteObject(entity.getId());
        return new JsonResult("delete ok!");
    }

}

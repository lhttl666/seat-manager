package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.dao.SysNoticeDao;
import com.chen.pojo.SysNotice;
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

    @RequestMapping("/currentNotice")
    public HashMap getCurrentNotice() {
        SysNotice notice = (SysNotice) SecurityUtils.getSubject().getPrincipal();
        HashMap<String, Object> map = new HashMap<>();
        map.put("id", notice.getId());
        map.put("title", notice.getTitle());
        map.put("content", notice.getContent());
        System.out.println(map);
        return map;
    }


}

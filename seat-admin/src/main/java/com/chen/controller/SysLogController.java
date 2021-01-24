package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/log/")
public class SysLogController {
    @Autowired
    private SysLogService sysLogService;

    // http://localhost/log/doFindPageObjects?pageCurrent=1
    @GetMapping("doFindPageObjects")
    public JsonResult doFindPageObjects(String username, Integer pageCurrent) {
        return new JsonResult(sysLogService.findPageObjects(username, pageCurrent));
    }
}
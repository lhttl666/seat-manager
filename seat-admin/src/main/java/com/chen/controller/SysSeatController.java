package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.pojo.SysMenu;
import com.chen.pojo.SysSeat;
import com.chen.service.SysSeatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/seat/")
public class SysSeatController {
    @Autowired
    private SysSeatService sysSeatService;

    @GetMapping("doFindZtreeMenuNodes")
    public JsonResult doFindZtreeMenuNodes() {
        return new JsonResult(sysSeatService.findZtreeMenuNodes());
    }

    @GetMapping("doFindObjects")
    public JsonResult doFindObjects() {
        List<SysSeat> list = sysSeatService.findObjects();
        System.out.println(list);
        return new JsonResult(list);
    }

    @PostMapping("doSaveObject")
    public JsonResult doSaveObject(@RequestBody SysSeat entity) {
        sysSeatService.saveObject(entity);
        return new JsonResult("save ok");
    }

    @PutMapping("doUpdateObject")
    public JsonResult doUpdateObject(@RequestBody SysSeat entity) {
        sysSeatService.updateObject(entity);
        return new JsonResult("update ok!!");
    }


}

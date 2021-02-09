package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.pojo.SysMenu;
import com.chen.pojo.SysSeat;
import com.chen.pojo.SysUser;
import com.chen.service.SysSeatService;
import org.apache.shiro.SecurityUtils;
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

    @RequestMapping("doDeleteObject")
    public JsonResult doDeleteObject(SysSeat entity) {
        sysSeatService.doDeleteObject(entity);
        return new JsonResult("删除成功!");
    }

    @PostMapping("doReserveSeat")
    public JsonResult doReserveSeat(@RequestBody SysSeat entity) {
        sysSeatService.reserveSeat(entity);
        return new JsonResult("座位预定成功!");
    }

    @PostMapping("doReturnSeat")
    public JsonResult doReturnSeat(@RequestBody SysSeat entity) {
        sysSeatService.returnSeat(entity);
        return new JsonResult("座位退订成功!");
    }

}

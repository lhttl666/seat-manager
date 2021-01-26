package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.pojo.SysMenu;
import com.chen.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/menu/")
public class SysMenuController {
    @Autowired
    private SysMenuService sysMenuService;

    @GetMapping("doFindZtreeMenuNodes")
    public JsonResult doFindZtreeMenuNodes(){
        return new JsonResult(sysMenuService.findZtreeMenuNodes());
    }

    @GetMapping("doFindObjects")
    public JsonResult doFindObjects(){
        List<SysMenu> list = sysMenuService.findObjects();
        return new JsonResult(list);
    }

    @PostMapping("doSaveObject")
    public JsonResult doSaveObject(@RequestBody SysMenu entity){
        sysMenuService.saveObject(entity);
        return new JsonResult("save ok");
    }

    @PutMapping("doUpdateObject")
    public JsonResult doUpdateObject(@RequestBody SysMenu entity){
        sysMenuService.updateObject(entity);
        return new JsonResult("update ok!!");
    }


}

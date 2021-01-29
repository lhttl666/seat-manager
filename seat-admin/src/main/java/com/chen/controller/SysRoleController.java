package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysRole;
import com.chen.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/role/")
public class SysRoleController {
    @Autowired
    private SysRoleService sysRoleService;

    /*
     * 分页查询方法
     * @author GangsterChen
     * @date 2021/1/27 14:53
     * @param [name, pageCurrent]
     * @return [java.lang.String, java.lang.Integer]
     */
    @GetMapping("/doFindPageObjects")
    public JsonResult findPageObject(String name, Integer pageCurrent) {
        return new JsonResult(sysRoleService.findPageObject(name, pageCurrent));
    }

    @PostMapping("/doSaveObject")
    public JsonResult doSaveObjects(SysRole entity, Integer[] menuIds) {
        sysRoleService.saveObject(entity, menuIds);
        return new JsonResult("role save ok!!");
    }

    @GetMapping("/doFindById/{id}")
    public JsonResult doFindById(@PathVariable Integer id) {
        return new JsonResult(sysRoleService.findById(id));
    }

    @RequestMapping("/doUpdateObject")
    public JsonResult doUpdateObject(SysRole entity, Integer[] menuIds) {
        sysRoleService.updateObject(entity, menuIds);
        return new JsonResult("update ok!");
    }

    @GetMapping("/doFindRoles")
    public JsonResult doFindRoles() {
        return new JsonResult(sysRoleService.findRoles());
    }


}

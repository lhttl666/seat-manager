package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.common.pojo.PageObject;
import com.chen.pojo.SysRole;
import com.chen.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

}

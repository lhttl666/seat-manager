package com.chen.controller;


import com.chen.pojo.SysUser;
import com.chen.pojo.SysUserMenu;
import com.chen.service.SysMenuService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class PageController {

    @Autowired
    private SysMenuService sysMenuService;

    // http://localhost/doIndexUI
    @GetMapping("/doIndexUI")
    public String doIndexUI(Model model) {
        // 获取登录用户信息 shiro框架的固定写法
        SysUser user = (SysUser) SecurityUtils.getSubject().getPrincipal();
        // 存储登录用户
        model.addAttribute("username", user.getUsername());
        // 查询用户菜单
        List<SysUserMenu> userMenus = sysMenuService.findUserMenus(user.getId());
        model.addAttribute("userMenus", userMenus);
        return "starter";
    }

    @GetMapping("/{module}/{moduleUI}")
    public String doModuleUI(@PathVariable String moduleUI) {
        return "/sys/" + moduleUI;
    }

    @GetMapping("/doPageUI")
    public String doPageUI() {
        return "common/page";
    }


}

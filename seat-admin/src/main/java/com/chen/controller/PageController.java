package com.chen.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PageController {

    // http://localhost/doIndexUI
    @GetMapping("/doIndexUI")
    public String doIndexUI() {
        return "starter";
    }

    @GetMapping("/{module}/{moduleUI}")
    public String doModuleUI(@PathVariable String moduleUI) {
        return "sys/" + moduleUI;
    }

    @GetMapping("/doPageUI")
    public String doPageUI(){
        return "common/page";
    }

}

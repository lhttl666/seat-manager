package com.chen.controller;


import com.chen.common.pojo.JsonResult;
import com.chen.pojo.SysFeedback;
import com.chen.service.SysFeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/feedback/")
public class SysFeedbackController {

    @Autowired
    private SysFeedbackService sysFeedbackService;

    @RequestMapping("/doSaveObject")
    public JsonResult doSaveObject(SysFeedback entity) {
        sysFeedbackService.doSaveObject(entity);
        return new JsonResult("反馈成功!");
    }

    @GetMapping("/doFindPageObjects")
    public JsonResult doFindPageObjects(String feedback, Integer pageCurrent) {
        return new JsonResult(sysFeedbackService.findPageObjects(feedback, pageCurrent));
    }


}

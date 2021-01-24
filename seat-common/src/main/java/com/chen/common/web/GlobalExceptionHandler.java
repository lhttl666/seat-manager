package com.chen.common.web;


import com.chen.common.pojo.JsonResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@RestControllerAdvice  // 全局异常注解
public class GlobalExceptionHandler {
    @ExceptionHandler(RuntimeException.class)
    public JsonResult doHandleRuntimeException(RuntimeException runtimeException) {
        log.error("exception : {} ", runtimeException.getMessage());
        runtimeException.printStackTrace();
        return new JsonResult(runtimeException);
    }


}

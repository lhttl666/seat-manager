package com.chen.common.web;


import com.chen.common.pojo.JsonResult;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.ShiroException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
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

    @ExceptionHandler(ShiroException.class)
    public JsonResult doShiroException(ShiroException e) {
        JsonResult result = new JsonResult();
        result.setState(0);
        if (e instanceof UnknownAccountException) {
            result.setMessage("用户名不存在!");
        } else if (e instanceof IncorrectCredentialsException) {
            result.setMessage("密码不正确!");
        } else if (e instanceof LockedAccountException) {
            result.setMessage("账户已被锁定!");
        } else if (e instanceof AuthenticationException) {
            result.setMessage("没有权限");
        } else {
            result.setMessage("认证或授权失败!");
        }
        return result;
    }

}

package com.chen.service.aspect;

import com.chen.common.annotation.RequiredLog;
import com.chen.common.util.IPUtils;
import com.chen.pojo.SysLog;
import com.chen.service.SysLogService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

@Slf4j
@Aspect
@Component
public class SysLogAspect {
    /**
     * @Pointcut注解用于定义切入点 bean(" spring容器中bean的名字 ")这个表达式为切入点表达式定义的一种语法,
     * 它描述的是某个bean或多个bean中所有方法的集合为切入点,这个形式的切入点
     * 表达式的缺陷是不能精确到具体方法的.
     */
    @Pointcut("@annotation(com.chen.common.annotation.RequiredLog)")
    public void doLog() {
    }//此方法只负责承载切入点的定义

    /**
     * @param joinPoint 连接点对象,此对象封装了要执行的切入点方法信息.
     *                  可以通过连接点对象调用目标方法,这里的ProceedingJoinPoint类型只能应用于@Around描述的方法参数中
     * @return 目标方法的执行结果
     * @throws Throwable
     * @Around注解描述的方法,可以在切入点执行之前和之后进行业务拓展, 在当前业务中, 此方法为日志通知方法
     */
    @Around("doLog()")
    public Object doAround(ProceedingJoinPoint jp) throws Throwable {
        long t1 = System.currentTimeMillis();
        log.info("Start:{}", t1);
        try {
            Object result = jp.proceed();//执行目标方法(切点方法中的某个方法)
            long t2 = System.currentTimeMillis();
            log.info("After:{}", t2);
            saveUserLog(jp, t2 - t1);
            return result;//目标业务方法的执行结果
        } catch (Throwable e) {
            e.printStackTrace();
            log.error("Exception:{}", System.currentTimeMillis());
            throw e;
        }
    }

    @Autowired
    private SysLogService sysLogService;

    /**
     * 记录用户行为日志
     */
    private void saveUserLog(ProceedingJoinPoint jp, long time) throws Exception {
        // 1.获取用户行为日志
        // 获取登录用户名(未登录时则给固定值)
        String username = "chenhaotest1";
        String ip = IPUtils.getIpAddr();  //使用工具类获取本机IP
        // 获取操作 @RequiredLog注解中value属性的值
        // 获取目标对象类型
        Class<?> targetCls = jp.getTarget().getClass();
        // 获取目标方法
        MethodSignature ms = (MethodSignature) jp.getSignature(); //(获取方法签名)
        Method targetMethod = targetCls.getMethod(ms.getName(), ms.getParameterTypes());
        // 获取方法上的注解
        RequiredLog annotation = targetMethod.getAnnotation(RequiredLog.class);
        // 获取注解中定义的操作名
        String operation = annotation.value();
        // 获取方法声明(类全名+方法名)
        String classMethodName = targetCls.getName() + "." + targetMethod.getName();
        // 获取方法参数信息
        Object[] args = jp.getArgs();
        String params = new ObjectMapper().writeValueAsString(args);
        // 2.封装用户行为日志

        SysLog sysLog = new SysLog();
        sysLog.setUsername(username);
        sysLog.setIp(ip);
        sysLog.setOperation(operation);
        sysLog.setMethod(classMethodName);
        sysLog.setParams(params);
        sysLog.setTime(time);
        // 3.存储用户信息日志到数据库
        new Thread() {
            @Override
            public void run() {
                sysLogService.saveObject(sysLog);
            }
        }.start();
    }


}
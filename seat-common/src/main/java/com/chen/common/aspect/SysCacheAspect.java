package com.chen.common.aspect;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Aspect
@Component
@Order(1)
public class SysCacheAspect {
    // 假设是cache
    private Map<String, Object> cache = new ConcurrentHashMap<>();

    @Pointcut("@annotation(com.chen.common.annotation.RequiredCache)")
    public void doCache() {
    }

    @Pointcut("@annotation(com.chen.common.annotation.ClearCache)")
    public void doClearCache() {
    }

    @Around("doCache()")
    public Object doCacheAround(ProceedingJoinPoint jp) throws Throwable {
        System.out.println("log: get datas from cache");
        // 1.从缓存取数据,假如缓存中有则直接return缓存数据
        Object result = cache.get("cacheKey");
        if (result != null) return result;
        // 2.缓存中没有则执行目标方法查询数据
        result = jp.proceed();
        // 3.将查询到的结果存储到缓存对象
        System.out.println("log: put data to cache");
        cache.put("cacheKey", result);
        return result;
    }


    @AfterReturning("doClearCache()")
    public void doClearCacheAround() {
        System.out.println("log: clear cache!");
        // 清除缓存中数据
        cache.clear();
    }


}

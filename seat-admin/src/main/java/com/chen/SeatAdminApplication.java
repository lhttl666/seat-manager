package com.chen;


import com.chen.service.realm.ShiroRealm;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.web.config.DefaultShiroFilterChainDefinition;
import org.apache.shiro.spring.web.config.ShiroFilterChainDefinition;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableAsync;

import java.util.LinkedHashMap;


@EnableAsync
@SpringBootApplication
public class SeatAdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(SeatAdminApplication.class, args);
    }

    @Bean
    public Realm realm() {
        return new ShiroRealm();
    }

    @Bean
    public ShiroFilterChainDefinition shiroFilterChainDefinition(){
        DefaultShiroFilterChainDefinition chainDefinition = new DefaultShiroFilterChainDefinition();
        LinkedHashMap<String, String> map = new LinkedHashMap<>();
        // 设置允许匿名访问的资源(匿名访问需放在上面)
        map.put("/bower_components/**", "anon");  //anon对应shiro中的匿名过滤器
        map.put("/build/**", "anon");  //anon对应shiro中的匿名过滤器
        map.put("/dist/**", "anon");  //anon对应shiro中的匿名过滤器
        map.put("/plugins/**", "anon");  //anon对应shiro中的匿名过滤器
        map.put("/doIndexUI", "anon");  //首页(转跳到登录页面)
        map.put("/user/doLogin", "anon");  //登录页面
        map.put("/doLogout", "logout"); //配置登出操作,shiro框架给出的登出过滤器
        // 设置需要认证以后才能访问的资源
        map.put("/**", "authc"); //authc 对应一个认证过滤器，认证以后才可访问

        chainDefinition.addPathDefinitions(map);
        return chainDefinition;
    }



}

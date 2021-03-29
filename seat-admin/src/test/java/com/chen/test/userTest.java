package com.chen.test;

import com.chen.service.SysUserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class userTest {

    @Autowired
    private SysUserService sysUserService;

    @Test
    public void testUser(){

        System.out.println(sysUserService.getCurrentUserData().toString());
    }

}

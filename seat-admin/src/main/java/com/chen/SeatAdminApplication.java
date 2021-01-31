package com.chen;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;


@EnableAsync
@SpringBootApplication
public class SeatAdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(SeatAdminApplication.class, args);
    }

}

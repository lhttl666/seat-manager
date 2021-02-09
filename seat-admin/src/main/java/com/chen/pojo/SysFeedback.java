package com.chen.pojo;

import lombok.Data;

import java.util.Date;

@Data
public class SysFeedback {
    private Integer id;
    private Integer userId;
    private String feedback;
    private Date time;

}

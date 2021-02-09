package com.chen.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class SysFeedback implements Serializable {
    private static final long serialVersionUID = -7509487903250160411L;
    private Integer id;
    private Integer userId;
    private String feedback;
    private Date time;
}

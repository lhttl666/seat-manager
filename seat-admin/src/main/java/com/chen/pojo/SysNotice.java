package com.chen.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class SysNotice implements Serializable {
    private static final long serialVersionUID = 6647732552202996770L;
    private Integer id;
    private String title;
    private String content;
    private Date createdTime;
    private Date modifiedTime;
    private String createdUser;
    private String modifiedUser;


}

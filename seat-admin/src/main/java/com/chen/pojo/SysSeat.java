package com.chen.pojo;

import lombok.Data;

import java.util.Date;

@Data
public class SysSeat {
    private Integer id;
    private String name;
    private Integer parentId;
    private String parentName;
    private Integer state;
    private Date createdTime;
    private Date modifiedTime;
    private String createdUser;
    private String modifiedUser;

}

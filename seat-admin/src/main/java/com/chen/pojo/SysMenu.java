package com.chen.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class SysMenu implements Serializable {
    private static final long serialVersionUID = 6153250698751538407L;
    private Integer id;
    private String name;
    private String url;
    private Integer type;  // 菜单类型
    private Integer sort;  // 菜单排序
    private String note;   // 备注
    private Integer parentId;
    private String parentName;
    private String permission; // 授权
    private Date createdTime;
    private Date modifiedTime;
    private String createdUser;
    private String modifiedUser;

}

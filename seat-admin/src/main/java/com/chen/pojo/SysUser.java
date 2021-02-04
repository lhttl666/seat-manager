package com.chen.pojo;


import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class SysUser implements Serializable {
    private static final long serialVersionUID = -932445778240052829L;
    private Integer id;
    private String username;
    private String password;
    private String salt;
    private String mobile;
    private String email;
    private Integer valid = 1;//默认为有效状态,0代表无效
    private Integer deptId;
    private String deptName;
    private Date createdTime;
    private Date modifiedTime;
    private String createdUser;
    private String modifiedUser;
    private String sex;
    private Date birthday;


}

package com.chen.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;


@Data
public class SysUserMenu implements Serializable {
    private static final long serialVersionUID = 1352589864188190926L;
    private Integer id;
    private String name;
    private String url;
    private List<SysUserMenu> childMenus;
}

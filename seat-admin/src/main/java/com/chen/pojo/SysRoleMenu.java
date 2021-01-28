package com.chen.pojo;


import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 通过此对象封装角色和菜单id信息
 */
@Data
public class SysRoleMenu implements Serializable {
    private static final long serialVersionUID = 3806021901145438841L;
    private Integer id;
    private String name;
    private String note;
    private List<Integer> menuIds;
}
package com.chen.common.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Node implements Serializable {
    private static final long serialVersionUID = -1089276701668376782L;
    private Integer id;
    private String name;
    private Integer parentId;
}
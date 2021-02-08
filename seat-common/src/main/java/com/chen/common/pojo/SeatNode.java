package com.chen.common.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class SeatNode implements Serializable {
    private static final long serialVersionUID = -6102883980051817810L;
    private Integer id;
    private String name;
    private Integer parentId;
}

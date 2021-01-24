package com.chen.common.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Data
public class PageObject<T> implements Serializable {
    private static final long serialVersionUID = -3397571098845732037L;
    // 总记录数
    private Integer rowCount;
    // 当前页的记录
    private List<T> records;
    // 当前页码值
    private Integer pageCurrent;
    // 页面大小
    private Integer pageSize;
    // 总页数
    private Integer pageCount;

    public PageObject() {
    }

    public PageObject(Integer rowCount, List<T> records, Integer pageCurrent, Integer pageSize) {
        this.rowCount = rowCount;
        this.records = records;
        this.pageCurrent = pageCurrent;
        this.pageSize = pageSize;
        this.pageCount = this.rowCount / this.pageSize;
        if (this.rowCount % this.pageSize != 0) this.pageCount++;
    }
}

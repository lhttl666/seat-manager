package com.chen.service;


import com.chen.common.pojo.PageObject;
import com.chen.pojo.*;

public interface SysNoticeService {
    PageObject<SysNotice>  doFindNoticePageObjects(String name, Integer pageCurrent);

    int saveObject(SysNotice entity, Integer[] menuIds);

    SysNotice findById(Integer id);

    int doDeleteObject(Integer id);

    int updateNoticeObject(SysNotice entity);

    int saveNoticeObject(SysNotice entity);

}

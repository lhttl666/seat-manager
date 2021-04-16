package com.chen.common.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MimeMessage implements Serializable {

    private static final long serialVersionUID = -6078444581176840008L;

    private String from;
    private String recipient;   //收件人
    private String subject; //主题
    private String content;   //内容
    private Date sentDate;   //发送日期




}

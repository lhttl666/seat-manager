package com.chen.service.aspect;


import com.chen.common.annotation.RequiredLog;
import com.chen.common.annotation.SendEmail;
import com.chen.pojo.SysLog;
import com.chen.service.SysUserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.SneakyThrows;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.Properties;

@Aspect
@Component
@Order(1)
public class SysSendEmailAspect {

    @Pointcut("@annotation(com.chen.common.annotation.SendEmail)")
    public void doEmail() {
    }

    @Around("doEmail()")
    public Object doAround(ProceedingJoinPoint jp) throws Throwable {

        try {
            Object result = jp.proceed();//执行目标方法(切点方法中的某个方法)
            Thread t = new Thread() {
                @SneakyThrows
                @Override
                public void run() {
                    doSendEmail(jp);
                }
            };
            t.start();

            return result;//目标业务方法的执行结果
        } catch (Throwable e) {
            e.printStackTrace();
            throw e;
        }
    }


    @Autowired
    private SysUserService sysUserService;


    private void doSendEmail(ProceedingJoinPoint jp) throws Exception {
        String userEmail = (String) sysUserService.getCurrentUserData().get("email");
        String username = (String) sysUserService.getCurrentUserData().get("username");

        // 获取目标对象类型
        Class<?> targetCls = jp.getTarget().getClass();
        // 获取目标方法
        MethodSignature ms = (MethodSignature) jp.getSignature(); //(获取方法签名)
        Method targetMethod = targetCls.getMethod(ms.getName(), ms.getParameterTypes());
        // 获取方法上的注解
        SendEmail annotation = targetMethod.getAnnotation(SendEmail.class);
        // 获取注解中定义的title
        String emailTitile = annotation.value();
        String emailContent = annotation.content();

        /********************************************************************************/

        // 发送者的账户密码 别改！
        String myEmailAccount = "gangsterchen@163.com";
        String myEmailPassword = "ODLEZQKPRAVIZPFK";

        // 网易163邮箱的 SMTP 服务器地址 别改！
        String myEmailSMTPHost = "smtp.163.com";

        // 收件人邮箱（替换为自己知道的有效邮箱）
        String receiveMailAccount = userEmail;

        // 1. 创建参数配置, 用于连接邮件服务器的参数配置
        Properties props = new Properties();                    // 参数配置
        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        props.setProperty("mail.smtp.host", myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
        props.setProperty("mail.smtp.auth", "true");            // 需要请求认证


        // 2. 根据配置创建会话对象, 用于和邮件服务器交互
        Session session = Session.getInstance(props);
        // 设置为debug模式, 可以查看详细的发送 log
        session.setDebug(true);

        // 3. 创建一封邮件
        MimeMessage message = createMimeMessage(session, myEmailAccount, receiveMailAccount, emailTitile, emailContent, username);

        // 4. 根据 Session 获取邮件传输对象
        Transport transport = session.getTransport();

        transport.connect(myEmailAccount, myEmailPassword);

        // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
        transport.sendMessage(message, message.getAllRecipients());

        // 7. 关闭连接
        transport.close();
    }

    /**
     * 创建一封只包含文本的简单邮件
     *
     * @param session     和服务器交互的会话
     * @param sendMail    发件人邮箱
     * @param receiveMail 收件人邮箱
     * @return
     * @throws Exception
     */
    public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail, String title, String content, String username) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);

        // 2. From: 发件人
        message.setFrom(new InternetAddress(sendMail, "管理员陈", "UTF-8"));

        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, username, "UTF-8"));

        // 4. Subject: 邮件主题
        message.setSubject(title, "UTF-8");

        // 5. Content: 邮件正文（可以使用html标签）
        message.setContent(content, "text/html;charset=UTF-8");
        // 6. 设置发件时间
        message.setSentDate(new Date());

        // 7. 保存设置
        message.saveChanges();

        return message;
    }


}

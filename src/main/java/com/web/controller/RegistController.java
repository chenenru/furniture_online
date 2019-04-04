package com.web.controller;

import com.sun.mail.util.MailSSLSocketFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.GeneralSecurityException;
import java.util.Properties;

/**
 * @author shkstart
 * @create 2019-04-03 15:51
 */
@Repository
public class RegistController {

    private static String userName = "3326257306@qq.com";//发送邮件的人
    private static String password = "mvdmciyyygcfdacd";//发送邮件的账户的密码
    //private static String to = "3326257306@qq.com";//接收邮件的人
    private static String port = "465";//465、587  端口号：易邮发给qq:25 qq发给易邮：465

    /**
     * 用户激活账号
     * @return
     */
   @RequestMapping("/Active")
    public String ToActive() {

        return "";//WEB-INF/jsp/Regist.jsp
    }

    /**
     * 该方法用来发送邮件
     * @param :给谁发邮件
     * **/
    @RequestMapping("/mail")
    public String toMail(String to,String code) throws AddressException, MessagingException {
        //1、创建连接对象，连接到邮箱服务器
        Properties props = new Properties();
        //开启debug调试
        props.setProperty("mail.debug", "true");
        //stmp服务器需要进行身份验证，也就是有户名和密码的校验，这样才能通过验证
        props.setProperty("mail.smtp.auth", "true");
        //发送邮件协议名称
        props.setProperty("mail.transport.protocol", "smtp");
        //设置邮件服务器主机名
        props.setProperty("mail.host", "smtp.qq.com");//本地
        //设端口号(该配置可写可不写)
        props.setProperty("mail.smtp.port", port);
        props.setProperty("mail.smtp.password",password);

        //开 启 S S L 加 密，否 则 会 失 败
        MailSSLSocketFactory sf = null;
        try {
            sf = new MailSSLSocketFactory();
        } catch (GeneralSecurityException e) {
            e.printStackTrace();
        }
        sf.setTrustAllHosts(true);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.socketFactory", sf);

        //Authenticator:认证信息
        Session session = Session.getInstance(props, new Authenticator(){
            @Override
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName,password);//使用它给其他账户发邮件
            }
        });

        //2、创建邮件对象
        Message message = new MimeMessage(session);
        //2.1设置发件人
        message.setFrom(new InternetAddress(userName));
        //2、2设置收件人
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        //2.3邮件的主题
        message.setSubject("您好，这是网上家具商城激活用户账号的邮件");
        //2.4邮件的正文（即邮件的内容）
        message.setContent("<h1>来自网上家具商城的激活邮件，点击链接激活账号：</h1><h3><a href='http://localhost:8080/furniture_onlone/active?code="+code+"'>" +
                        "http://localhost:8080/furniture_onlone/active?code="+code+"</a></h3>，祝您购物愉快！", "text/html;charset=utf-8");

        //3.发送邮件
        Transport trans = session.getTransport();
        //连接邮件服务器
        trans.connect(userName, password);
        //发送邮件
        trans.sendMessage(message, message.getAllRecipients());
        //关闭连接
        trans.close();

        //Transport.send(message);(两种方式都可以)

        System.out.println("发送成功");
        return "success";
    }
}

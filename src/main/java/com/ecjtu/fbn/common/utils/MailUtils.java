package com.ecjtu.fbn.common.utils;

import com.ecjtu.fbn.common.orm.domain.MailInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/2/27
 */
public class MailUtils {

    @Autowired
    private JavaMailSender mailSender;

    public void sendMail(MailInfo mailInfo){
        SimpleMailMessage msg = new SimpleMailMessage();
        msg.setFrom("1830166767@qq.com");
        msg.setTo(mailInfo.getReceiveAddress());
        msg.setText(mailInfo.getContent());
        msg.setSubject(mailInfo.getSubject());
        mailSender.send(msg);
    }
}

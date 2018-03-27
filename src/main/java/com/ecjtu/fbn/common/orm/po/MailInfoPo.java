package com.ecjtu.fbn.common.orm.po;

import java.io.Serializable;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/2/27
 */
public class MailInfoPo implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 接收者邮箱地址
     */
    private String receiveAddress;
    /**
     * 邮件内容
     */
    private String content;
    /**
     * 邮件主题
     */
    private String subject;

    public MailInfoPo() {
    }

    public MailInfoPo(String receiveAddress, String content, String subject) {
        this.receiveAddress = receiveAddress;
        this.content = content;
        this.subject = subject;
    }

    public String getReceiveAddress() {
        return receiveAddress;
    }

    public void setReceiveAddress(String receiveAddress) {
        this.receiveAddress = receiveAddress;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}

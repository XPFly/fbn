package com.ecjtu.fbn.common.orm.domain;

import com.ecjtu.fbn.common.orm.po.MailInfoPo;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/2/27
 */
public class MailInfo extends MailInfoPo {
    private static final long serialVersionUID = 1L;

    public MailInfo() {
    }

    public MailInfo(String receiveAddress, String content, String subject) {
        super(receiveAddress, content, subject);
    }
}

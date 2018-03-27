package com.ecjtu.fbn.orm.domain;


import com.ecjtu.fbn.orm.po.ArticlePo;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/13
 */
public class Article extends ArticlePo {
    private static final long serialVersionUID = 1L;

    /**
     * 排序方式：升序 or 降序
     */
    private String orderByType;

    public String getOrderByType() {
        return orderByType;
    }

    public void setOrderByType(String orderByType) {
        this.orderByType = orderByType;
    }
}

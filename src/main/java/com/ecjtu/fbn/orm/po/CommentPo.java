package com.ecjtu.fbn.orm.po;

import java.io.Serializable;
import java.util.Date;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/24
 */
public class CommentPo implements Serializable {
    /**
     * UUID
     */
    private String uuid;
    /**
     * ARTICLE_UUID
     */
    private String articleUuid;
    /**
     * USER_UUID
     */
    private String userUuid;
    /**
     * COMMENT
     */
    private String comment;
    /**
     * CREATE_TIME
     */
    private Date createTime;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getArticleUuid() {
        return articleUuid;
    }

    public void setArticleUuid(String articleUuid) {
        this.articleUuid = articleUuid;
    }

    public String getUserUuid() {
        return userUuid;
    }

    public void setUserUuid(String userUuid) {
        this.userUuid = userUuid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "CommentPo{" +
                "uuid='" + uuid + '\'' +
                ", articleUuid='" + articleUuid + '\'' +
                ", userUuid='" + userUuid + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}

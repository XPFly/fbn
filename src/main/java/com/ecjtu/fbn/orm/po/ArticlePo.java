package com.ecjtu.fbn.orm.po;

import java.io.Serializable;
import java.util.Date;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/13
 */
public class ArticlePo implements Serializable {
    /**
     * UUID
     */
    private String uuid;
    /**
     * TITLE：标题
     */
    private String title;
    /**
     * SUBTITLE：副标题
     */
    private String subtitle;
    /**
     * AUTHOR：作者
     */
    private String author;
    /**
     * TYPE：类型
     */
    private String type;
    /**
     * TAG：标签
     */
    private String tag;
    /**
     * ARTICLE_IMAGE：文章图片
     */
    private String articleImage;
    /**
     * SUMMARY：文章简介
     */
    private String summary;
    /**
     * CONTENT：内容
     */
    private String content;
    /**
     * CLICK_NUMBER：点击量
     */
    private int clickNumber;
    /**
     * COMMENT_NUMBER：评论量
     */
    private int commentNumber;
    /**
     * CREATE_TIME：创建时间
     */
    private Date createTime;
    /**
     * UPDATE_TIME：更新时间
     */
    private Date updateTime;
    /**
     * OPERATOR：操作人
     */
    private String operator;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getArticleImage() {
        return articleImage;
    }

    public void setArticleImage(String articleImage) {
        this.articleImage = articleImage;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getClickNumber() {
        return clickNumber;
    }

    public void setClickNumber(int clickNumber) {
        this.clickNumber = clickNumber;
    }

    public int getCommentNumber() {
        return commentNumber;
    }

    public void setCommentNumber(int commentNumber) {
        this.commentNumber = commentNumber;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    @Override
    public String toString() {
        return "ArticlePo{" +
                "uuid='" + uuid + '\'' +
                ", title='" + title + '\'' +
                ", subtitle='" + subtitle + '\'' +
                ", author='" + author + '\'' +
                ", type='" + type + '\'' +
                ", tag='" + tag + '\'' +
                ", articleImage='" + articleImage + '\'' +
                ", clickNumber=" + clickNumber +
                ", commentNumber=" + commentNumber +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", operator='" + operator + '\'' +
                '}';
    }
}

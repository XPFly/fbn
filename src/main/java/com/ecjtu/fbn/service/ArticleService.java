package com.ecjtu.fbn.service;


import com.ecjtu.fbn.orm.domain.Article;

import java.util.List;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/13
 */
public interface ArticleService {
    /**
     * 查询：根据相应条件查询
     *
     * @param article  Article
     * @return      List<Article>
     */
    List<Article> findList(Article article);

    /**
     * 查询：根据UUID查询
     *
     * @param uuid  UUID
     * @return      User
     */
    Article findOne(String uuid);

    /**
     * 查询符合条件的记录数
     *
     * @param article  Article
     * @return      Integer
     */
    Integer count(Article article);

    /**
     * 查询所有的记录
     *
     * @return  List<Article>
     */
    List<Article> findAll();

    /**
     * 查询所有的记录,根据类型
     *
     * @param typeId    TYPE
     * @return          List<Article>
     */
    List<Article> findAllByType(String typeId);

    /**
     * 查询点击量排行前十的记录
     *
     * @return  List<Article>
     */
    List<Article> maxClickNumber();

    /**
     * 更新点击量
     *
     * @param uuid  UUID
     */
    void increaseClickNumber(String uuid);

    /**
     * 更新评论量
     *
     * @param uuid  UUID
     */
    void increaseCommentNumber(String uuid);
}

package com.ecjtu.fbn.service;

import com.ecjtu.fbn.orm.domain.Comment;

import java.util.List;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/24
 */
public interface CommentService {
    /**
     * 查询：根据UUID
     *
     * @param articleUuid   ARTICLE_UUID
     * @return              List<Comment>
     */
    List<Comment> findById(String articleUuid);

    /**
     * 保存
     *
     * @param comment   Comment
     */
    void save(Comment comment);
}

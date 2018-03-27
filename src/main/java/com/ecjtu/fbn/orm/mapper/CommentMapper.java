package com.ecjtu.fbn.orm.mapper;

import com.ecjtu.fbn.orm.domain.Comment;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/24
 */
@Repository
public interface CommentMapper {
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

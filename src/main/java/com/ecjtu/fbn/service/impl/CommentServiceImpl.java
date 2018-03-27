package com.ecjtu.fbn.service.impl;

import com.ecjtu.fbn.common.utils.UUIDGenerator;
import com.ecjtu.fbn.orm.domain.Comment;
import com.ecjtu.fbn.orm.mapper.CommentMapper;
import com.ecjtu.fbn.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/24
 */
@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> findById(String articleUuid) {
        return commentMapper.findById(articleUuid);
    }

    @Override
    public void save(Comment comment) {
        comment.setUuid(UUIDGenerator.UUIDWith32());
        comment.setUserUuid(UUIDGenerator.UUIDWith32());
        comment.setCreateTime(new Date());
        commentMapper.save(comment);
    }
}

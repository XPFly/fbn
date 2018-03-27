package com.ecjtu.fbn.controller;

import com.ecjtu.fbn.common.AbstractController;
import com.ecjtu.fbn.common.ResultMessage;
import com.ecjtu.fbn.common.constants.CommonConstants;
import com.ecjtu.fbn.common.utils.RequestHelper;
import com.ecjtu.fbn.orm.domain.Article;
import com.ecjtu.fbn.orm.domain.Comment;
import com.ecjtu.fbn.service.impl.ArticleServiceImpl;
import com.ecjtu.fbn.service.impl.CommentServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/15
 */
@Controller
@RequestMapping("/fbn/article")
public class ArticleController extends AbstractController{

    private static final Logger LOGGER = LoggerFactory.getLogger(ArticleController.class);

    @Autowired
    private ArticleServiceImpl articleServiceImpl;

    @Autowired
    private CommentServiceImpl commentServiceImpl;

    @RequestMapping("test")
    public String test(){
        return "/fbn/test";
    }

    /**
     * 文章信息展示页面
     *
     * @param article  Article
     * @param model Model
     * @return      String
     */
    @RequestMapping("/list/{typeId}")
    public String findList(@PathVariable("typeId") String typeId, Article article, Model model, HttpServletRequest request){
        LOGGER.info("获取到的typId：[{}]",typeId);
        if (StringUtils.isEmpty(typeId)){
            PageHelper.startPage(RequestHelper.getParamValueOfInt("pageNum",PAGE_NUM,request),RequestHelper.getParamValueOfInt("pageSize",PAGE_SIZE,request));
            List<Article> articleList = articleServiceImpl.findAll();
            LOGGER.info("查询到[{}]条记录",articleList.size());
            PageInfo<Article> pageInfo = new PageInfo<>(articleList,5);
            List<Article> clickNumberList = articleServiceImpl.maxClickNumber();
            LOGGER.info("排行榜==>查询到[{}]条记录",clickNumberList.size());
            model.addAttribute("articleList", articleList).addAttribute("clickNumberList",clickNumberList).addAttribute("pageInfo", pageInfo).addAttribute("article", article);
            return "/fbn/articleList";
        }
        if (CommonConstants.ESSAY_TYPE.equals(typeId)){
            getList(typeId,article,request,model);
        }else {
            getList(CommonConstants.TECH_TYPE,article,request,model);
        }
        return "/fbn/articleList";
    }

    private void getList(String typeId,Article article,HttpServletRequest request,Model model){
        PageHelper.startPage(RequestHelper.getParamValueOfInt("pageNum",PAGE_NUM,request),RequestHelper.getParamValueOfInt("pageSize",PAGE_SIZE,request));
        List<Article> articleList = articleServiceImpl.findAllByType(typeId);
        LOGGER.info("查询到[{}]条记录",articleList.size());
        PageInfo<Article> pageInfo = new PageInfo<>(articleList,5);
        List<Article> clickNumberList = articleServiceImpl.maxClickNumber();
        LOGGER.info("排行榜==>查询到[{}]条记录",clickNumberList.size());
        model.addAttribute("articleList", articleList).addAttribute("clickNumberList",clickNumberList).addAttribute("pageInfo", pageInfo).addAttribute("article", article);
    }

    /**
     * 文章详情页面
     *
     * @param uuid  UUID
     * @param model Model
     * @return      String
     */
    @RequestMapping("/detail/{uuid}")
    public String showArticle(@PathVariable("uuid") String uuid, Model model){
        articleServiceImpl.increaseClickNumber(uuid);
        Article article = articleServiceImpl.findOne(uuid);
        LOGGER.info("获取的文章UUID[{}]",article.toString());
        List<Article> clickNumberList = articleServiceImpl.maxClickNumber();
        List<Comment> commentList = commentServiceImpl.findById(uuid);
        model.addAttribute("article",article).addAttribute("clickNumberList",clickNumberList).addAttribute("commentList",commentList);
        return "/fbn/articleDetail";
    }

    /**
     * 提交评论
     *
     * @return  ResultMessage
     */
    @RequestMapping("/comment")
    public ResultMessage comment(Comment comment){
        commentServiceImpl.save(comment);
        return ResultMessage.success();
    }

}

package com.ecjtu.fbn.controller;

import com.ecjtu.fbn.common.AbstractController;
import com.ecjtu.fbn.common.orm.domain.MailInfo;
import com.ecjtu.fbn.common.utils.MailUtils;
import com.ecjtu.fbn.common.utils.RequestHelper;
import com.ecjtu.fbn.orm.domain.Article;
import com.ecjtu.fbn.service.impl.ArticleServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/17
 */
@Controller
@RequestMapping("/fbn/blog")
public class BlogController extends AbstractController {

    private static final Logger LOGGER = LoggerFactory.getLogger(BlogController.class);

    @Autowired
    private ArticleServiceImpl articleServiceImpl;

    /**
     * 网站门户页面
     *
     * @param article  Article
     * @param model Model
     * @return      String
     */
    @RequestMapping("/home")
    public String home(Article article, Model model, HttpServletRequest request){
        PageHelper.startPage(RequestHelper.getParamValueOfInt("pageNum",PAGE_NUM,request),RequestHelper.getParamValueOfInt("pageSize",PAGE_SIZE,request));
        List<Article> articleList = articleServiceImpl.findAll();
        LOGGER.info("查询到[{}]条记录",articleList.size());
        PageInfo<Article> pageInfo = new PageInfo<>(articleList,5);
        List<Article> clickNumberList = articleServiceImpl.maxClickNumber();
        model.addAttribute("articleList", articleList).addAttribute("clickNumberList",clickNumberList).addAttribute("pageInfo", pageInfo).addAttribute("article", article);
        return "/fbn/home";
    }
}

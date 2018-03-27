package com.ecjtu.fbn;

import com.ecjtu.fbn.orm.domain.Article;
import com.ecjtu.fbn.service.impl.ArticleServiceImpl;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/2/28
 */
@Controller
@SpringBootApplication
@MapperScan(basePackages = "com.ecjtu.fbn.orm.mapper")
public class StartApp {

    public static void main(String[] args) {
        SpringApplication.run(StartApp.class, args);
    }
    @Autowired
    private ArticleServiceImpl articleServiceImpl;

    @RequestMapping("/test")
    public String showArticle(Model model){
        Article article = articleServiceImpl.findOne("15a4c07cbf7e417286fe8a241f6a6c8a");
        System.out.println("获取文章："+article.getUuid());
        model.addAttribute("article",article);
        return "/fbn/articleList";
    }

}

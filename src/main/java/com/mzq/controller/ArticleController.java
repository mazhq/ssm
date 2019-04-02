package com.mzq.controller;

import com.mzq.pojo.Article;
import com.mzq.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/31 15:10
 */
@Controller
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    ArticleService articleService;


    /**
     * 获取文章信息包含作者
     */
    @RequestMapping(value = "/getArticleInfo",method = RequestMethod.GET)
    public ModelAndView getArticleInfo(){
        List<Article> list = articleService.listArticlesInfo();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("articleList",list);
        modelAndView.setViewName("list");
        return modelAndView;
    }

}

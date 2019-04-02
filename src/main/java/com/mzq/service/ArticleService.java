package com.mzq.service;

import com.mzq.pojo.Article;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/31 15:07
 */
public interface ArticleService {

    /**
     * 获取文章包含文章的作者的信息
     */
    List<Article> listArticlesInfo();
}

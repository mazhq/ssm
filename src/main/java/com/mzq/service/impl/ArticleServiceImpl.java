package com.mzq.service.impl;

import com.mzq.dao.ArticleDao;
import com.mzq.pojo.Article;
import com.mzq.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/31 15:07
 */
@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDao articleDao;
    @Override
    public List<Article> listArticlesInfo() {
        return articleDao.listArticlesInfo();
    }
}

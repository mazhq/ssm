package com.mzq.dao;

import com.mzq.pojo.Article;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/31 15:08
 */
@Repository
public interface ArticleDao {

    /**
     * 获取文章包含文章的作者
     */
    List<Article> listArticlesInfo();
}

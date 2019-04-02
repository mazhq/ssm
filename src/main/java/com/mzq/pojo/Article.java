package com.mzq.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @Author: mazhq
 * @Date: 2019/3/31 13:38
 */
@Setter
@Getter
@ToString
public class Article {
    /**
     * 文章的id
     */
    private Integer articleId;
    /**
     * 文章的标题
     */
    private String articleTitle;
    /**
     * 关联用户对象
     */
    private UserInfo articleAuthor;

    public Article() {
    }

}

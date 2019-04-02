package com.mzq.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/30 15:02
 */
@Setter
@Getter
@ToString
@Component//项目启动  创建实例
public class UserInfo {

    /**
     * 用户标识
     */
    private Integer userId;
    /**
     * 用户名
     */
    private String userName;
    /**
     *密码
     */
    private String password;

    /**
     * 需定义一个集合存放指定用户的所有文章对象
     */
    private List<Article> articleList;

    public UserInfo() {
    }

    /**
     * 有参构造方法
     * @param userId
     * @param userName
     * @param password
     */
    public UserInfo(Integer userId, String userName, String password, List<Article> articleList) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.articleList = articleList;
    }


}

package com.mzq.service;

import com.mzq.pojo.UserInfo;
import org.omg.PortableInterceptor.USER_EXCEPTION;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/30 15:09
 */
public interface UserInfoService {
    /**
     * 获取用户集合
     * @return
     */
    List<UserInfo> getAllUserInfos();

    /**
     * 删除用户
     * @param userId  用户id
     * @return  影响行数
     */
    int deleteUserInfo(int userId);

    UserInfo getUserInfoByUserNameAndPassword(String userName, String password);

    /**
     * 根据更新用户
     * @param userInfo
     */
    void updateUserInfo(UserInfo userInfo);

    /**
     * 新增用户
     * @param userInfo
     */
    void insert(UserInfo userInfo);

    /**
     * 获取用户和用户发表的文章
     */
    UserInfo getUserInfoAndArticle(int userId);

}

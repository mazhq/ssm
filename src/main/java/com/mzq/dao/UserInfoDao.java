package com.mzq.dao;

import com.mzq.pojo.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/30 15:08
 */
@Repository
public interface UserInfoDao {
    /**
     * 获取用户列表
     *
     * @return 集合
     */
    List<UserInfo> listUserInfos();

    /**
     * 根据id删除用户
     *
     * @param userId
     */
    int deleteUserInfoByUserId(int userId);

    /**
     * 根据id删除用户
     *
     * @param userId
     */
    UserInfo getUserInfo(@Param("userName") String userName, @Param("password") String password);

    /**
     * 更新用户
     *
     * @param userInfo
     */
    void updateUserInfo(UserInfo userInfo);

    /**
     * 插入用户
     *
     * @param userInfo
     */
    void insert(UserInfo userInfo);

    /**
     * 获取文章
     * @param userId
     * @return
     */
    UserInfo getUserInfoAndArticle(int userId);


}

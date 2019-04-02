package com.mzq.service.impl;

import com.mzq.dao.UserInfoDao;
import com.mzq.pojo.UserInfo;
import com.mzq.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.registry.infomodel.User;
import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/30 15:33
 */
@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoDao userInfoDao;

    @Override
    public List<UserInfo> getAllUserInfos() {
        return userInfoDao.listUserInfos();
    }

    @Override
    public int deleteUserInfo(int userId) {
        return userInfoDao.deleteUserInfoByUserId(userId);
    }

    @Override
    public UserInfo getUserInfoByUserNameAndPassword(String userName, String password) {
        return userInfoDao.getUserInfo(userName, password);
    }

    @Override
    public void updateUserInfo(UserInfo userInfo) {
        userInfoDao.updateUserInfo(userInfo);
    }

    @Override
    public void insert(UserInfo userInfo) {
        userInfoDao.insert(userInfo);
    }

    @Override
    public UserInfo getUserInfoAndArticle(int userId) {
        return userInfoDao.getUserInfoAndArticle(userId);
    }
}

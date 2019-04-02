package com.mzq.controller;

import com.google.code.kaptcha.Producer;
import com.mzq.pojo.UserInfo;
import com.mzq.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/3/30 15:09
 */
@Controller  //@RestController  返回的是json对象  = @Controller + @ResponseBody
@RequestMapping(value = "/user")
public class UserInfoController {
    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private Producer captchaProducer;

    /**
     * 验证码
     * @return
     */
    @GetMapping(value = "/test")
    @ResponseBody
    public String test(){
        String text = captchaProducer.createText();
        return text;
    }

    /**
     * 获取用户列表
     */
    @GetMapping(value = "/list")
    public ModelAndView getAllUserInfos() {
        List<UserInfo> list = userInfoService.getAllUserInfos();
        ModelAndView modelAndView = new ModelAndView();
        //  设置数据
        modelAndView.addObject("userList", list);
        //  设置视图名称
        modelAndView.setViewName("index");
        return modelAndView;
    }

    /**
     * delete
     *
     * @param userId
     * @return
     */
    @DeleteMapping(value = "/deleteUserInfo/{userId}")
    @ResponseBody
    public int deleteUserInfo(@PathVariable(value = "userId") int userId) {
        int i = userInfoService.deleteUserInfo(userId);
        return i;
    }

    /**
     * 根据id更新用户
     *
     * @param userInfo
     * @return
     */
    @PostMapping(value = "/updateUserInfo")
    @ResponseBody
    public String updateUserInfo(UserInfo userInfo) {
        userInfoService.updateUserInfo(userInfo);
        return "1";
    }

    /**
     * 新增用户
     *
     * @param userInfo
     * @return
     */
    @PostMapping(value = "/insertUserInfo")
    @ResponseBody
    public String insert(UserInfo userInfo) {
        userInfoService.insert(userInfo);
        return "1";
    }

    /**
     * 登录的方法  实际上是查询的sql的相关操作
     *
     * @param userName
     * @param password
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(@RequestParam("userName") String userName,
                        @RequestParam("password") String password,
                        HttpServletRequest request) {
        //调用业务层方法
        UserInfo userInfo = userInfoService.getUserInfoByUserNameAndPassword(userName, password);
        //登录信息存放到Session
        HttpSession session = request.getSession();
        session.setAttribute("user", userInfo);
        return "index";
    }

    /**
     * 获取用户和用户发布的文章
     */
    @RequestMapping(value = "/getUserInfoAndArticles", method = RequestMethod.GET)
    public ModelAndView getUserInfoAndArticles(@RequestParam("userId")int userId){
        // 调用业务层
        UserInfo userInfo = userInfoService.getUserInfoAndArticle(userId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userInfoAndArticles",userInfo);
        modelAndView.setViewName("details");
        return modelAndView;
    }


}

package com.studentmanage.service;

import com.studentmanage.dao.entity.User;

/**
 * Created by blue on 2016/11/29.
 */
public interface SignInAndOutService {
    //登陆，返回用户信息
    User login(String userTelephone, String userPassword);

    //注册，返回用户信息
    User register(User user);

    //忘记密码,输入电话，返回验证码
    String getForgetPasswordVail(String userTelephone);

    //输入电话和验证码，新密码返回新密码
    String resetPassword(String userTelephone, String vailNumber);

}

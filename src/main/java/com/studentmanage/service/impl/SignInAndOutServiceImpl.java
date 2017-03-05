package com.studentmanage.service.impl;

import com.studentmanage.dao.entity.User;
import com.studentmanage.dao.mapper.UserMapper;
import com.studentmanage.service.SignInAndOutService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


/**
 * Created by blue on 2016/11/29.
 */
@Service("SignInAndOutService")
public class SignInAndOutServiceImpl implements SignInAndOutService {
    @Resource
    private UserMapper userMapper;

    @Override
    public User login(String userTelephone, String userPassword) {
        User user = userMapper.selectForLogin(userTelephone, userPassword);
        return user;
    }

    @Override
    public User register(User user) {
        //如果注册成功id就不为0
        user.setId(userMapper.insert(user));
        return user;
    }

    @Override
    public String getForgetPasswordVail(String userTelephone) {
        return null;
    }

    @Override
    public String resetPassword(String userTelephone, String vailNumber) {
        return null;
    }
}

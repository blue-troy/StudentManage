package com.studentmanage.dao.mapper;

import com.studentmanage.dao.entity.User;

import java.util.List;


/**
 * Created by blue on 2016/11/29.
 */
public interface UserMapper {

    /**
     * @param user user
     * @return id 如果用户存在就返回id=0 不存在就注册成功返回id
     */
    int insert(User user);

    User selectByTelephone(String telephone);

    User selectForLogin(String telephone, String password);

    User selectById(int id);

    int deleteById(int id);


    /**
     * 输出社团相应等级的名单
     * @param GroupId  社团id
     * @param Grade 等级
     * @return 名单
     */
    List<User> listByGroupIdAndGrade(Integer GroupId, Integer Grade);


}

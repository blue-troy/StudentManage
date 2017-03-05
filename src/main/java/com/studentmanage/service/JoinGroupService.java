package com.studentmanage.service;

import com.studentmanage.dao.entity.Department;
import com.studentmanage.dao.entity.Group;
import com.studentmanage.dao.entity.Relation;

import java.util.List;

/**
 * @Title :${file_name}
 * @package :${PACKAGE_NAME}
 * @Description :${todo}
 * @author :heyixin
 * @date : 2016/11/30 上午 12:11
 * @version :3.0
 */
public interface JoinGroupService {
    /**
     * 模糊查询+普通查询社团信息
     * @param groupNameInfo 传入的社团名称
     * @return 查询出的社团
     */
    List<Group> listGroup(String groupNameInfo);

    List<Department> listDepartment(Integer groupId);

    void joinGroup(Relation relation);
}

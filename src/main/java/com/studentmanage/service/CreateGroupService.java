package com.studentmanage.service;

import com.studentmanage.dao.entity.Department;
import com.studentmanage.dao.entity.Group;

/**
 * 创建社团接口.
 * Created by blue on 2016/11/30.
 */
public interface CreateGroupService {

    /**
     * 创建社团.
     * @param group 社团信息
     */
    Integer CreateGroup(Group group);

    /**
     * @param department 传入部门信息
     * @return 部门信息
     */
    Integer CreateDepartment(Department department);

}

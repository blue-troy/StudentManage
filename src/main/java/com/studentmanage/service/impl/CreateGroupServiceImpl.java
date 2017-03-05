package com.studentmanage.service.impl;

import com.studentmanage.dao.entity.Department;
import com.studentmanage.dao.entity.Group;
import com.studentmanage.dao.mapper.DepartmentMapper;
import com.studentmanage.dao.mapper.GroupMapper;
import com.studentmanage.service.CreateGroupService;
import org.springframework.stereotype.Service;

/**
 * @author :heyixin
 * @version :3.0
 * @Title :${file_name}
 * @package :com.studentmanage.service.impl
 * @Description :${todo}
 * @date : 2016/12/5 下午 9:06
 */
@Service("CreateGroupService")
public class CreateGroupServiceImpl implements CreateGroupService {
    private GroupMapper groupMapper;
    private DepartmentMapper departmentMapper;

    @Override
    public Integer CreateGroup(Group group) {
        return groupMapper.insert(group);
    }

    @Override
    public Integer CreateDepartment(Department department) {
        return departmentMapper.insert(department);
    }
}

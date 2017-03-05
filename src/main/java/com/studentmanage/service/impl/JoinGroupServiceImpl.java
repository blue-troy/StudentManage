package com.studentmanage.service.impl;

import com.studentmanage.dao.entity.Department;
import com.studentmanage.dao.entity.Group;
import com.studentmanage.dao.entity.Relation;
import com.studentmanage.dao.mapper.DepartmentMapper;
import com.studentmanage.dao.mapper.GroupMapper;
import com.studentmanage.dao.mapper.RelationMapper;
import com.studentmanage.service.JoinGroupService;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author :heyixin
 * @version :3.0
 * @Title :${file_name}
 * @package :com.studentmanage.service.impl
 * @Description :${todo}
 * @date : 2016/12/5 下午 8:56
 */
@Service("JoinGroupService")
public class JoinGroupServiceImpl implements JoinGroupService {
    @Resource
    private GroupMapper groupMapper;
    @Resource
    private RelationMapper relationMapper;
    @Resource
    private DepartmentMapper departmentMapper;

    @Override
    public List<Group> listGroup(String groupNameInfo) {
        return groupMapper.list(groupNameInfo);
    }

    @Override
    public List<Department> listDepartment(Integer groupId) {
        return departmentMapper.selectByGid(groupId);
    }

    @Override
    public void joinGroup(Relation relation) {
        relationMapper.insertAsApplication(relation);
    }
}

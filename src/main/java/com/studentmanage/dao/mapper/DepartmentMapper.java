package com.studentmanage.dao.mapper;

import com.studentmanage.dao.entity.Department;

import java.util.List;

/**
 * Created by blue on 2016/11/30.
 */
public interface DepartmentMapper {
    /**
     * @param gid 社团id
     * @return 部门信息
     */
    List<Department> selectByGid(int gid);

    /**
     * @param department 社团信息
     */
    Integer insert(Department department);

    /**
     * @param id 部门Id
     * @return 部门
     */
    Department selectByDid(int id);
}

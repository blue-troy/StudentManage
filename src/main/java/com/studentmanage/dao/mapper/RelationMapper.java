package com.studentmanage.dao.mapper;

import com.studentmanage.dao.entity.Relation;

import java.util.List;

/**
 * Created by blue on 2016/11/30.
 */
public interface RelationMapper {
    /**
     * 申请加入社团
     * @param relation grade=null
     */
    void insertAsApplication(Relation relation);

    /**
     * 更改自己的等级
     * @param relation
     */
    void updateAsGrade(Relation relation);

    void updateToChangeDepartment(Integer uid, Integer departmentIdBefore, Integer departmentIdAfter);

    /**
     * 查询用户可管理的社团
     * @param userId
     * @return
     */
    List<Relation> listByUserIdGradeBlow2(Integer userId);
}

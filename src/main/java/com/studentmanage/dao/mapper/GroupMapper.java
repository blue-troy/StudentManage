package com.studentmanage.dao.mapper;

import com.studentmanage.dao.entity.Group;

import java.util.List;

/**
 * Created by blue on 2016/11/30.
 */
public interface GroupMapper {

    /**
     * 创建社团
     * @param group
     * @return 社团信息，包含社团id
     */
    Integer insert(Group group);

    /**
     * 若传入了社团名就进行模糊搜索，没传入就搜索所有
     * @param groupNameInfo 传入社团名模糊搜索
     * @return 社团列表
     */
    List<Group> list(String groupNameInfo);

    /**
     * @param createId 创建者id
     * @return 社团信息
     */
    List<Group> listByCreateId(Integer createId);

}

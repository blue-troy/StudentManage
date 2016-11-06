package com.studentmanage.blue.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.studentmanage.blue.model.Department;
import com.studentmanage.blue.model.Group;
import com.studentmanage.blue.service.GroupService;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by heyixin on 2016/9/8.
 */
public class GroupAction extends ActionSupport {
    private Group group;
    private GroupService groupService = new GroupService();
    private List<Group> groups;

    private int gid;
    private String gname;
    private int uid;
    private String uname;
    private int department_id;

    public GroupAction() {
    }
//    创建社团
    public String creat() throws Exception {
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        this.group.setCreatid(((Integer) session.get("user_id")).intValue());
        this.groupService.creat(this.group);
        return "groupindex";
    }
//模糊查询社团信息
    public String list() throws SQLException {
        this.groups = this.groupService.list(this.gname);
        return "success";
    }
//加入社团
    public String join() throws Exception {
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        this.setUid(((Integer) session.get("user_id")).intValue());
        this.setUname((String) session.get("user_name"));

        this.groupService.join(this.getUid(), this.getUname(), this.getGid(), this.getGname(),this.department_id);
        return "groupindex";
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public GroupService getGroupService() {
        return groupService;
    }

    public void setGroupService(GroupService groupService) {
        this.groupService = groupService;
    }

    public List<Group> getGroups() {
        return groups;
    }

    public void setGroups(List<Group> groups) {
        this.groups = groups;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public int getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(int department_id) {
        this.department_id = department_id;
    }
}

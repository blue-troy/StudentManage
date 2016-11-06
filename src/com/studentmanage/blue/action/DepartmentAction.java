package com.studentmanage.blue.action;

import com.opensymphony.xwork2.ActionSupport;
import com.studentmanage.blue.model.Department;
import com.studentmanage.blue.service.DepartmentService;

import java.util.List;

/**
 * Created by heyixin on 2016/9/8.
 */
public class DepartmentAction extends ActionSupport {
    private Department department;
    private DepartmentService departmentService = new DepartmentService();
    private List<Department> departments;
    private int gid;

    public DepartmentAction() {
    }

    //传入社团id查询社团部门
    public String list() {
        this.departments = this.departmentService.getById(gid);
        return SUCCESS;
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public DepartmentService getDepartmentService() {
        return departmentService;
    }

    public void setDepartmentService(DepartmentService departmentService) {
        this.departmentService = departmentService;
    }

    public List<Department> getDepartments() {
        return departments;
    }

    public void setDepartments(List<Department> departments) {
        this.departments = departments;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

}

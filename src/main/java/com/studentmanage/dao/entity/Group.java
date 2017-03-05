package com.studentmanage.dao.entity;

/**
 * @Title :${file_name}
 * @package :${PACKAGE_NAME}
 * @Description :${todo}
 * @author :heyixin
 * @date : 2016/9/8 上午 12:07
 * @version :3.0
 */
public class Group {
    private int id;
    private String name;
    private String teacher;
    private String date;
    private String organization;
    private String info;
    private int creatid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public int getCreatid() {
        return creatid;
    }

    public void setCreatid(int creatid) {
        this.creatid = creatid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Group{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", teacher='" + teacher + '\'' +
                ", date='" + date + '\'' +
                ", organization='" + organization + '\'' +
                ", info='" + info + '\'' +
                ", creatid=" + creatid +
                '}';
    }
}

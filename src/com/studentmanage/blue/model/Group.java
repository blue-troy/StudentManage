package com.studentmanage.blue.model;

/**
 * Created by heyixin on 2016/9/8.
 */
public class Group {
    private int id;
    private String name;
    private String teacher;
    private String date;
    private String organization;
    private String info;
    private int creatid;
    private String creatname;

    public String getCreatname() {
        return creatname;
    }

    public void setCreatname(String creatname) {
        this.creatname = creatname;
    }

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

}

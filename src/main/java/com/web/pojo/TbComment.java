package com.web.pojo;

import java.util.Date;

public class TbComment {
    private Integer id;
    private Integer c_id;
    private Integer pr_id;
    private String co_info;
    private String co_date;
    private Integer co_grade;

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public Integer getPr_id() {
        return pr_id;
    }

    public void setPr_id(Integer pr_id) {
        this.pr_id = pr_id;
    }

    public String getCo_info() {
        return co_info;
    }

    public void setCo_info(String co_info) {
        this.co_info = co_info;
    }

    public String getCo_date() {
        return co_date;
    }

    public void setCo_date(String co_date) {
        this.co_date = co_date;
    }

    public Integer getCo_grade() {
        return co_grade;
    }

    public void setCo_grade(Integer co_grade) {
        this.co_grade = co_grade;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    @Override
    public String toString() {
        return "TbComment{" +
                "id=" + id +
                ", cId=" + c_id +
                ", prId=" + pr_id +
                ", coInfo='" + co_info + '\'' +
                ", coDate=" + co_date +
                ", coGrade=" + co_grade +
                '}';
    }
}
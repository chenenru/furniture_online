package com.web.pojo;

/**
 * @ClassName Manage_Comment
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/11 20:23
 * @Version 1.0
 **/
public class Manage_Comment {
    private Integer id;
    private Integer c_id;
    private Integer pr_id;
    private String co_info;
    private String co_date;
    private Integer co_grade;

    @Override
    public String toString() {
        return "Manage_Comment{" +
                "id=" + id +
                ", c_id=" + c_id +
                ", pr_id=" + pr_id +
                ", co_info='" + co_info + '\'' +
                ", co_date='" + co_date + '\'' +
                ", co_grade=" + co_grade +
                ", start=" + start +
                ", rows=" + rows +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public Manage_Comment() {
    }

    public Manage_Comment(Integer id, Integer c_id, Integer pr_id, String co_info, String co_date, Integer co_grade, Integer start, Integer rows) {
        this.id = id;
        this.c_id = c_id;
        this.pr_id = pr_id;
        this.co_info = co_info;
        this.co_date = co_date;
        this.co_grade = co_grade;
        this.start = start;
        this.rows = rows;
    }

    private Integer start;
    private Integer rows;
}

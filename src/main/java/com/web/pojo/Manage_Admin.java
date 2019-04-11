package com.web.pojo;

/**
 * @ClassName Manage_Admin
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/11 20:26
 * @Version 1.0
 **/
public class Manage_Admin {
    private Integer id;

    private String aEmail;

    private String aPwd;

    private Integer start;
    private Integer rows;

    @Override
    public String toString() {
        return "Manage_Admin{" +
                "id=" + id +
                ", aEmail='" + aEmail + '\'' +
                ", aPwd='" + aPwd + '\'' +
                ", start=" + start +
                ", rows=" + rows +
                '}';
    }

    public Manage_Admin() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getaEmail() {
        return aEmail;
    }

    public void setaEmail(String aEmail) {
        this.aEmail = aEmail;
    }

    public String getaPwd() {
        return aPwd;
    }

    public void setaPwd(String aPwd) {
        this.aPwd = aPwd;
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

    public Manage_Admin(Integer id, String aEmail, String aPwd, Integer start, Integer rows) {
        this.id = id;
        this.aEmail = aEmail;
        this.aPwd = aPwd;
        this.start = start;
        this.rows = rows;
    }
}

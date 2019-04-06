package com.web.pojo;

public class TbAdmin {
    private Integer id;

    private String aEmail;

    private String aPwd;

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
        this.aEmail = aEmail == null ? null : aEmail.trim();
    }

    public String getaPwd() {
        return aPwd;
    }

    public void setaPwd(String aPwd) {
        this.aPwd = aPwd == null ? null : aPwd.trim();
    }

    @Override
    public String toString() {
        return "TbAdmin{" +
                "id=" + id +
                ", aEmail='" + aEmail + '\'' +
                ", aPwd='" + aPwd + '\'' +
                '}';
    }
}
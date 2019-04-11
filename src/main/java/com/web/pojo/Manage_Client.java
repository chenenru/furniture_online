package com.web.pojo;

/**
 * @ClassName Manage_Client
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/12 3:20
 * @Version 1.0
 **/
public class Manage_Client {
    private Integer id;

    private String cEmail;

    private String cPwd;

    private String cName;

    private String cAddress;

    private String cPhone;

    private String cCode;

    private Integer cStatus;

    private Integer start;

    private Integer rows;

    @Override
    public String toString() {
        return "Manage_Client{" +
                "id=" + id +
                ", cEmail='" + cEmail + '\'' +
                ", cPwd='" + cPwd + '\'' +
                ", cName='" + cName + '\'' +
                ", cAddress='" + cAddress + '\'' +
                ", cPhone='" + cPhone + '\'' +
                ", cCode='" + cCode + '\'' +
                ", cStatus=" + cStatus +
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

    public String getcEmail() {
        return cEmail;
    }

    public void setcEmail(String cEmail) {
        this.cEmail = cEmail;
    }

    public String getcPwd() {
        return cPwd;
    }

    public void setcPwd(String cPwd) {
        this.cPwd = cPwd;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getcAddress() {
        return cAddress;
    }

    public void setcAddress(String cAddress) {
        this.cAddress = cAddress;
    }

    public String getcPhone() {
        return cPhone;
    }

    public void setcPhone(String cPhone) {
        this.cPhone = cPhone;
    }

    public String getcCode() {
        return cCode;
    }

    public void setcCode(String cCode) {
        this.cCode = cCode;
    }

    public Integer getcStatus() {
        return cStatus;
    }

    public void setcStatus(Integer cStatus) {
        this.cStatus = cStatus;
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

    public Manage_Client() {
    }

    public Manage_Client(Integer id, String cEmail, String cPwd, String cName, String cAddress, String cPhone, String cCode, Integer cStatus, Integer start, Integer rows) {
        this.id = id;
        this.cEmail = cEmail;
        this.cPwd = cPwd;
        this.cName = cName;
        this.cAddress = cAddress;
        this.cPhone = cPhone;
        this.cCode = cCode;
        this.cStatus = cStatus;
        this.start = start;
        this.rows = rows;
    }
}

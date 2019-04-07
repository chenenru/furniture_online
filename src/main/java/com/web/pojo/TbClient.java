package com.web.pojo;

public class TbClient {
    private Integer id;

    private String cEmail;

    private String cPwd;

    private String cName;

    private String cAddress;

    private String cPhone;

    private String cCode;

    private Integer cStatus;

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
        this.cEmail = cEmail == null ? null : cEmail.trim();
    }

    public String getcPwd() {
        return cPwd;
    }

    public void setcPwd(String cPwd) {
        this.cPwd = cPwd == null ? null : cPwd.trim();
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    public String getcAddress() {
        return cAddress;
    }

    public void setcAddress(String cAddress) {
        this.cAddress = cAddress == null ? null : cAddress.trim();
    }

    public String getcPhone() {
        return cPhone;
    }

    public void setcPhone(String cPhone) {
        this.cPhone = cPhone == null ? null : cPhone.trim();
    }

    public String getcCode() {
        return cCode;
    }

    public void setcCode(String cCode) {
        this.cCode = cCode == null ? null : cCode.trim();
    }

    public Integer getcStatus() {
        return cStatus;
    }

    public void setcStatus(Integer cStatus) {
        this.cStatus = cStatus;
    }

    @Override
    public String toString() {
        return "TbClient{" +
                "id=" + id +
                ", cEmail='" + cEmail + '\'' +
                ", cPwd='" + cPwd + '\'' +
                ", cName='" + cName + '\'' +
                ", cAddress='" + cAddress + '\'' +
                ", cPhone='" + cPhone + '\'' +
                ", cCode='" + cCode + '\'' +
                ", cStatus=" + cStatus +
                '}';
    }
}
package com.web.pojo;

public class TbProduct {
    private Integer id;

    private String pName;

    private String pType;

    private String pIntro;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName == null ? null : pName.trim();
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType == null ? null : pType.trim();
    }

    public String getpIntro() {
        return pIntro;
    }

    public void setpIntro(String pIntro) {
        this.pIntro = pIntro == null ? null : pIntro.trim();
    }

    @Override
    public String toString() {
        return "TbProduct{" +
                "id=" + id +
                ", pName='" + pName + '\'' +
                ", pType='" + pType + '\'' +
                ", pIntro='" + pIntro + '\'' +
                '}';
    }
}
package com.web.pojo;

/**
 * @ClassName CommentProperty
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/10 14:59
 * @Version 1.0
 **/
public class CommentProperty {
    private String prColor;

    private String prSize;

    private String prMaterial;

    private String cEmail;

    private String cName;

    private String co_info;
    private String co_date;
    private Integer co_grade;

    public String getPrColor() {
        return prColor;
    }

    @Override
    public String toString() {
        return "CommentProperty{" +
                "prColor='" + prColor + '\'' +
                ", prSize='" + prSize + '\'' +
                ", prMaterial='" + prMaterial + '\'' +
                ", cEmail='" + cEmail + '\'' +
                ", cName='" + cName + '\'' +
                ", co_info='" + co_info + '\'' +
                ", co_date='" + co_date + '\'' +
                ", co_grade=" + co_grade +
                '}';
    }

    public void setPrColor(String prColor) {
        this.prColor = prColor;
    }

    public String getPrSize() {
        return prSize;
    }

    public void setPrSize(String prSize) {
        this.prSize = prSize;
    }

    public String getPrMaterial() {
        return prMaterial;
    }

    public void setPrMaterial(String prMaterial) {
        this.prMaterial = prMaterial;
    }

    public String getcEmail() {
        return cEmail;
    }

    public void setcEmail(String cEmail) {
        this.cEmail = cEmail;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
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

    public CommentProperty() {
    }

    public CommentProperty(String prColor, String prSize, String prMaterial, String cEmail, String cName, String co_info, String co_date, Integer co_grade) {
        this.prColor = prColor;
        this.prSize = prSize;
        this.prMaterial = prMaterial;
        this.cEmail = cEmail;
        this.cName = cName;
        this.co_info = co_info;
        this.co_date = co_date;
        this.co_grade = co_grade;
    }
}

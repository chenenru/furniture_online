package com.web.pojo;

/**
 * @ClassName TbProductProperty
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/8 23:02
 * @Version 1.0
 **/
public class TbProductProperty {
    private Integer id;

    private String pName;

    private String pType;

    private String pIntro;

    private Integer pId;

    private String prImage;

    private String prColor;

    private String prSize;

    private String prMaterial;

    private Integer prStore;

    private Integer prInnum;

    private Integer prInprice;

    private Integer prOutprice;

    @Override
    public String toString() {
        return "TbProductProperty{" +
                "id=" + id +
                ", pName='" + pName + '\'' +
                ", pType='" + pType + '\'' +
                ", pIntro='" + pIntro + '\'' +
                ", pId=" + pId +
                ", prImage='" + prImage + '\'' +
                ", prColor='" + prColor + '\'' +
                ", prSize='" + prSize + '\'' +
                ", prMaterial='" + prMaterial + '\'' +
                ", prStore=" + prStore +
                ", prInnum=" + prInnum +
                ", prInprice=" + prInprice +
                ", prOutprice=" + prOutprice +
                '}';
    }

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
        this.pName = pName;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }

    public String getpIntro() {
        return pIntro;
    }

    public void setpIntro(String pIntro) {
        this.pIntro = pIntro;
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public String getPrImage() {
        return prImage;
    }

    public void setPrImage(String prImage) {
        this.prImage = prImage;
    }

    public String getPrColor() {
        return prColor;
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

    public Integer getPrStore() {
        return prStore;
    }

    public void setPrStore(Integer prStore) {
        this.prStore = prStore;
    }

    public Integer getPrInnum() {
        return prInnum;
    }

    public void setPrInnum(Integer prInnum) {
        this.prInnum = prInnum;
    }

    public Integer getPrInprice() {
        return prInprice;
    }

    public void setPrInprice(Integer prInprice) {
        this.prInprice = prInprice;
    }

    public Integer getPrOutprice() {
        return prOutprice;
    }

    public void setPrOutprice(Integer prOutprice) {
        this.prOutprice = prOutprice;
    }

    public TbProductProperty() {
    }

    public TbProductProperty(Integer id, String pName, String pType, String pIntro, Integer pId, String prImage, String prColor, String prSize, String prMaterial, Integer prStore, Integer prInnum, Integer prInprice, Integer prOutprice) {
        this.id = id;
        this.pName = pName;
        this.pType = pType;
        this.pIntro = pIntro;
        this.pId = pId;
        this.prImage = prImage;
        this.prColor = prColor;
        this.prSize = prSize;
        this.prMaterial = prMaterial;
        this.prStore = prStore;
        this.prInnum = prInnum;
        this.prInprice = prInprice;
        this.prOutprice = prOutprice;
    }
}

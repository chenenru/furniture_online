package com.web.pojo;

public class TbProperty {
    private Integer id;

    private Integer pId;

    private String prImage;

    private String prColor;

    private String prSize;

    private String prMaterial;

    private Integer prStore;

    private Integer prInnum;

    private Integer prInprice;

    private Integer prOutprice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
        this.prImage = prImage == null ? null : prImage.trim();
    }

    public String getPrColor() {
        return prColor;
    }

    public void setPrColor(String prColor) {
        this.prColor = prColor == null ? null : prColor.trim();
    }

    public String getPrSize() {
        return prSize;
    }

    public void setPrSize(String prSize) {
        this.prSize = prSize == null ? null : prSize.trim();
    }

    public String getPrMaterial() {
        return prMaterial;
    }

    public void setPrMaterial(String prMaterial) {
        this.prMaterial = prMaterial == null ? null : prMaterial.trim();
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

    @Override
    public String toString() {
        return "TbProperty{" +
                "id=" + id +
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
}
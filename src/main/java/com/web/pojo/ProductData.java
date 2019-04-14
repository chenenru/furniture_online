package com.web.pojo;

/**
 * @ClassName ProductData
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/13 21:17
 * @Version 1.0
 **/
public class ProductData {
    String type;
    int allPrice;

    @Override
    public String toString() {
        return "ProductData{" +
                "type='" + type + '\'' +
                ", allPrice=" + allPrice +
                '}';
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getAllPrice() {
        return allPrice;
    }

    public void setAllPrice(int allPrice) {
        this.allPrice = allPrice;
    }

    public ProductData() {
    }

    public ProductData(String type, int allPrice) {
        this.type = type;
        this.allPrice = allPrice;
    }
}

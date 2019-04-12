package com.web.pojo;

/**
 * @ClassName OrderInfo
 * @Description TODO
 * @Author LonelySeven
 * @Date 2019/4/12 18:09
 * @Version 1.0
 **/
public class OrderInfo {
    Integer orderId;
    String productName;
    Integer price;
    Integer num;

    @Override
    public String toString() {
        return "OrderInfo{" +
                "orderId=" + orderId +
                ", productName='" + productName + '\'' +
                ", price=" + price +
                ", num=" + num +
                '}';
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public OrderInfo() {
    }

    public OrderInfo(Integer orderId, String productName, Integer price, Integer num) {
        this.orderId = orderId;
        this.productName = productName;
        this.price = price;
        this.num = num;
    }
}

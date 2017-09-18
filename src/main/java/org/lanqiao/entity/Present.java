package org.lanqiao.entity;

public class Present {
    private Integer id;

    private String presentName;

    private Integer presentPrice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPresentName() {
        return presentName;
    }

    public void setPresentName(String presentName) {
        this.presentName = presentName == null ? null : presentName.trim();
    }

    public Integer getPresentPrice() {
        return presentPrice;
    }

    public void setPresentPrice(Integer presentPrice) {
        this.presentPrice = presentPrice;
    }
}
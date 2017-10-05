package org.lanqiao.entity;

import java.util.Date;

public class PresentRecord {
    private Integer id;

    private Integer userId;

    private Date time;

    private Integer presentId;

    private Integer amount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getPresentId() {
        return presentId;
    }

    public void setPresentId(Integer presentId) {
        this.presentId = presentId;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}
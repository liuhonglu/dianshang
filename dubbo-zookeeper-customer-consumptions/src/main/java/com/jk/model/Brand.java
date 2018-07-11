package com.jk.model;

import java.io.Serializable;

/**
 * 品牌表
 *
 * id 主键id
 * createdate 创建时间
 * modifydate 修改日期
 * orders 订单
 * introduction 介绍
 *logo 图标
 *name 名称
 *type 类型
 * url 地址
 * salesprice 售价
 * costprice 成本价
 * inventory 库存
 * shelves
 * sorting 排序
 */
public class Brand implements Serializable{

    private static final long serialVersionUID = -7120583181474403287L;

    private String id;
    private String createdate;
    private String modifydate;
    private Integer orders;
    private String introduction;
    private String logo;
    private String name;
    private Integer type;
    private String url;
    private Double salesprice;
    private  Double costprice;
    private Integer inventory ;
    private Integer shelves;
    private Integer sorting;

    public Double getSalesprice() {
        return salesprice;
    }

    public void setSalesprice(Double salesprice) {
        this.salesprice = salesprice;
    }

    public Double getCostprice() {
        return costprice;
    }

    public void setCostprice(Double costprice) {
        this.costprice = costprice;
    }

    public Integer getInventory() {
        return inventory;
    }

    public void setInventory(Integer inventory) {
        this.inventory = inventory;
    }

    public Integer getShelves() {
        return shelves;
    }

    public void setShelves(Integer shelves) {
        this.shelves = shelves;
    }

    public Integer getSorting() {
        return sorting;
    }

    public void setSorting(Integer sorting) {
        this.sorting = sorting;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getModifydate() {
        return modifydate;
    }

    public void setModifydate(String modifydate) {
        this.modifydate = modifydate;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Brand{" +
                "id='" + id + '\'' +
                ", createdate='" + createdate + '\'' +
                ", modifydate='" + modifydate + '\'' +
                ", orders=" + orders +
                ", introduction='" + introduction + '\'' +
                ", logo='" + logo + '\'' +
                ", name='" + name + '\'' +
                ", type=" + type +
                ", url='" + url + '\'' +
                '}';
    }
}

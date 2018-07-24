package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/*
促销活动
 */
public class Promotion implements Serializable{

    private static final long serialVersionUID = -323934796110373094L;
    private String id;//主键
    private String name;//名称
    private String title;//标题
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date beginDate;//起始日期
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date endDate;//结束日期
    private Integer sort;//排序
    private Integer minimumQuantity;//最小商品数量
    private Integer maximumQuantity;//最大商品数量
    private Integer minimumPrice;//最小商品价格
    private Integer maximumPrice;//最大商品价格
    private String priceExpression;//价格运算表达式
    private String pointExpression;//积分运算表达式
    private Integer isFreeShipping;//是否免运费
    private Integer isCouponAllowed;//是否允许使用优惠券
    private String introduction;//介绍
    private String memberRanks;//允许参加会员等级
    private String products;//允许参与商品
    private String brands;//允许参与品牌
    private Integer giftItems;//赠品
    //允许参与品牌
    //赠送优惠券
    //赠品


    public String getBrands() {
        return brands;
    }

    public void setBrands(String brands) {
        this.brands = brands;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getMinimumQuantity() {
        return minimumQuantity;
    }

    public void setMinimumQuantity(Integer minimumQuantity) {
        this.minimumQuantity = minimumQuantity;
    }

    public Integer getMaximumQuantity() {
        return maximumQuantity;
    }

    public void setMaximumQuantity(Integer maximumQuantity) {
        this.maximumQuantity = maximumQuantity;
    }

    public Integer getMinimumPrice() {
        return minimumPrice;
    }

    public void setMinimumPrice(Integer minimumPrice) {
        this.minimumPrice = minimumPrice;
    }

    public Integer getMaximumPrice() {
        return maximumPrice;
    }

    public void setMaximumPrice(Integer maximumPrice) {
        this.maximumPrice = maximumPrice;
    }

    public String getPriceExpression() {
        return priceExpression;
    }

    public void setPriceExpression(String priceExpression) {
        this.priceExpression = priceExpression;
    }

    public String getPointExpression() {
        return pointExpression;
    }

    public void setPointExpression(String pointExpression) {
        this.pointExpression = pointExpression;
    }

    public Integer getIsFreeShipping() {
        return isFreeShipping;
    }

    public void setIsFreeShipping(Integer isFreeShipping) {
        this.isFreeShipping = isFreeShipping;
    }

    public Integer getIsCouponAllowed() {
        return isCouponAllowed;
    }

    public void setIsCouponAllowed(Integer isCouponAllowed) {
        this.isCouponAllowed = isCouponAllowed;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getMemberRanks() {
        return memberRanks;
    }

    public void setMemberRanks(String memberRanks) {
        this.memberRanks = memberRanks;
    }

    public String getProducts() {
        return products;
    }

    public void setProducts(String products) {
        this.products = products;
    }

    public Integer getGiftItems() {
        return giftItems;
    }

    public void setGiftItems(Integer giftItems) {
        this.giftItems = giftItems;
    }

    @Override
    public String toString() {
        return "Promotion{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                ", sort=" + sort +
                ", minimumQuantity=" + minimumQuantity +
                ", maximumQuantity=" + maximumQuantity +
                ", minimumPrice=" + minimumPrice +
                ", maximumPrice=" + maximumPrice +
                ", priceExpression='" + priceExpression + '\'' +
                ", pointExpression='" + pointExpression + '\'' +
                ", isFreeShipping=" + isFreeShipping +
                ", isCouponAllowed=" + isCouponAllowed +
                ", introduction='" + introduction + '\'' +
                ", memberRanks='" + memberRanks + '\'' +
                ", products='" + products + '\'' +
                ", brands='" + brands + '\'' +
                ", giftItems=" + giftItems +
                '}';
    }
}

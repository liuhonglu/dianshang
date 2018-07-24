package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/*
优惠券管理
 */
public class Coupon implements Serializable{
    private static final long serialVersionUID = -9152689147085913464L;
    private String id;//主键
    private String name;//名称
    private String prefix;//前缀
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date beginDate;//使用起始日期
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;//使用结束日期
    private Integer minimumQuantity;//最小商品数量
    private Integer maximumQuantity;//最大商品数量
    private Integer minimumPrice;//最小商品价格
    private Integer maximumPrice;//最大商品价格
    private String priceExpression;//价格运算表达式
    private Integer isEnabled;//是否启用
    private Integer isExchange;//是否允许积分兑换
    private Integer point;//积分兑换数
    private String introduction;//介绍
    private String couponCodes;//优惠码
    private Integer promotions;//促销
    private Integer orders;//订单

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    @Override
    public String toString() {
        return "Coupon{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", prefix='" + prefix + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                ", minimumQuantity=" + minimumQuantity +
                ", maximumQuantity=" + maximumQuantity +
                ", minimumPrice=" + minimumPrice +
                ", maximumPrice=" + maximumPrice +
                ", priceExpression='" + priceExpression + '\'' +
                ", isEnabled=" + isEnabled +
                ", isExchange=" + isExchange +
                ", point=" + point +
                ", introduction='" + introduction + '\'' +
                ", couponCodes='" + couponCodes + '\'' +
                ", promotions=" + promotions +
                ", orders=" + orders +
                '}';
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

    public Integer getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(Integer isEnabled) {
        this.isEnabled = isEnabled;
    }

    public Integer getIsExchange() {
        return isExchange;
    }

    public void setIsExchange(Integer isExchange) {
        this.isExchange = isExchange;
    }

    public Integer getPoint() {
        return point;
    }

    public void setPoint(Integer point) {
        this.point = point;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getCouponCodes() {
        return couponCodes;
    }

    public void setCouponCodes(String couponCodes) {
        this.couponCodes = couponCodes;
    }

    public Integer getPromotions() {
        return promotions;
    }

    public void setPromotions(Integer promotions) {
        this.promotions = promotions;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }
}

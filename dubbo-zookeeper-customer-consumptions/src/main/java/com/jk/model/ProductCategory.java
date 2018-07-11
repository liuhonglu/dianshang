package com.jk.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class ProductCategory implements Serializable {


    private static final long serialVersionUID = -4642297646831214791L;

    /** id */
    private String id;

    /** 名称 */
    private String name;

    /** 页面标题 */
    private String seotitle;

    /** 页面关键词 */
    private String seokeywords;

    /** 页面描述 */
    private String seodescription;

    /** 树路径 */
    private String treepath;

    /** 层级 */
    private Integer grade;

    /** 上级分类 */
    private String parent;

    /*  排序*/
    private Integer orders;

    /** 下级分类 */
    private Set<ProductCategory> children = new HashSet<ProductCategory>();


    /*创建时间*/
    private String createdate ;
    /*修改时间*/
    private String modifydate ;



    private String  brandIds ;

    public String getBrandIds() {
        return brandIds;
    }

    public void setBrandIds(String brandIds) {
        this.brandIds = brandIds;
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

    public String getSeotitle() {
        return seotitle;
    }

    public void setSeotitle(String seotitle) {
        this.seotitle = seotitle;
    }

    public String getSeokeywords() {
        return seokeywords;
    }

    public void setSeokeywords(String seokeywords) {
        this.seokeywords = seokeywords;
    }

    public String getSeodescription() {
        return seodescription;
    }

    public void setSeodescription(String seodescription) {
        this.seodescription = seodescription;
    }

    public String getTreepath() {
        return treepath;
    }

    public void setTreepath(String treepath) {
        this.treepath = treepath;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public Set<ProductCategory> getChildren() {
        return children;
    }

    public void setChildren(Set<ProductCategory> children) {
        this.children = children;
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


    @Override
    public String toString() {
        return "ProductCategory{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", seotitle='" + seotitle + '\'' +
                ", seokeywords='" + seokeywords + '\'' +
                ", seodescription='" + seodescription + '\'' +
                ", treepath='" + treepath + '\'' +
                ", grade=" + grade +
                ", parent='" + parent + '\'' +
                ", orders=" + orders +
                ", children=" + children +
                ", createdate='" + createdate + '\'' +
                ", modifydate='" + modifydate + '\'' +
                ", brandIds='" + brandIds + '\'' +
                '}';
    }
}

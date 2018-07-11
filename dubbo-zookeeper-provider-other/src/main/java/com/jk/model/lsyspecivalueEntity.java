package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class lsyspecivalueEntity implements Serializable{
    private static final long serialVersionUID = -986801031841598086L;
    private String id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date modifydate;

    private Integer order;

    private String imges;

    private String name;

    private String speciid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public String getImges() {
        return imges;
    }

    public void setImges(String imges) {
        this.imges = imges == null ? null : imges.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSpeciid() {
        return speciid;
    }

    public void setSpeciid(String speciid) {
        this.speciid = speciid == null ? null : speciid.trim();
    }

    @Override
    public String toString() {
        return "lsyspecivalueEntity{" +
                "id='" + id + '\'' +
                ", createdate=" + createdate +
                ", modifydate=" + modifydate +
                ", order=" + order +
                ", imges='" + imges + '\'' +
                ", name='" + name + '\'' +
                ", speciid='" + speciid + '\'' +
                '}';
    }
}